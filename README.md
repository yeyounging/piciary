# 🖼️ Piciary

social picture diary : 

- If you write a diary, it will draw a picture for you.
- If you select your character, your character will appear in the picture diary.
- A picture diary with just a few lines
- Share your picture diaries with friends



## Program Structure
<img width="399" alt="image" src="https://github.com/yeyounging/Piciary/assets/133792082/d9293a6e-d756-4a1f-b7be-0b76b2168227">


### our Model : fine-tuned stable diffusion

we use *Dreambooth - We trained the model with 5 characters.

- According to the recommended usage, the learning was conducted with the number of image data sets * 100.
- UNet_Training_steps are 2e-6.
- Text_Encoder_Training steps are 350, Text_Encoder_Learning_Rate is 1e-6

<img width="285" alt="image" src="https://github.com/yeyounging/Piciary/assets/133792082/d7c5790e-9290-4667-b012-676b0961d01e">


you can this model in here : [https://huggingface.co/Jaym1207/character_model_v1/tree/main](https://huggingface.co/Jaym1207/character_model_v1/tree/main)
