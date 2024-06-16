from flask import Flask,render_template,request
from diffusers import StableDiffusionPipeline, EulerDiscreteScheduler
import torch
from sympy.polys.polyconfig import query
from transformers import AutoModelForSequenceClassification, AutoTokenizer
from PIL import Image
import io
import requests
import chatGPT

app= Flask(__name__)

@app.route('/model', methods=['POST'])
def index():
    if request.method == 'POST':
        content = request.form['content']
        # content 변수에 클라이언트에서 전송된 데이터가 들어갑니다.
        prompt = chatGPT.chatGPT(content)   # chatGPT call

    content = "txt"
    prompt = chatGPT.chatGPT(content)   #chatGPT call

    #model_id = "stabilityai/stable-diffusion-2"
    model_id="Jaym1207/character_model_v1"

    # Use the Euler scheduler here instead
    scheduler = EulerDiscreteScheduler.from_pretrained(model_id, subfolder="scheduler")
    pipe = StableDiffusionPipeline.from_pretrained(model_id, scheduler=scheduler, revision="fp16",
                                                   torch_dtype=torch.float16)
    pipe = pipe.to("mps")
    image = pipe(prompt, height=768, width=768).images[0]

    # text= "sleeping"
    # model_name = "Jaym1207/character_model_v1"
    # # 허깅페이스 변수
    # API_URL = "https://huggingface.co/Jaym1207/character_model_v1"
    # headers = {"Authorization": "Bearer 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"}
    # object_key_name = 'test.jpg'  # 랜덤이름

    # # 허깅페이스에 해당 모델에 프롬프트(text)를 전달하면 이미지를 리턴받는다.
    # def query(payload):
    #     response = requests.post(API_URL, headers=headers, json=payload)
    #     return response.content

    # 프롬프트 (text)

    image_bytes = query({
        "inputs": "sleeping",  # 예시) "black poodle, space, ball"
    })

    # 바이트이미지 -> 이미지객체
    image = Image.open(io.BytesIO(image_bytes))

    # 이미지객체 -> 파일객체
    temp_file = object_key_name + '.jpg'  # 이미지를 저장할 경로 설정
    image.save(temp_file)
    #image.save("test.png")

    return render_template('.html')

app.run(debug=True)