from flask import Flask
from flask import request, jsonify

import openai
import os

API_KEY= os.getenv("FLASK_API_KEY")

def chatGPT(txt=None):
    # set api key
    openai.api_key = API_KEY

    # Call the chat GPT API
    completion = openai.ChatCompletion.create(
        model="gpt-3.5-turbo",
        messages=[
            {"role": "system", "content": "You summarize the text in one simple and clear line."},
            {"role": "user", "content": txt} ],
        temperature=0,
        max_tokens=100
    )
    result = completion["choices"][0]["message"]["content"].encode("utf-8").decode()
    return jsonify({"result" : result})
