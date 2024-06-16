# 🖼️ Piciary

*make your diary a calender*

Social picture diary APP

- Select your character. Your character will appear in the picture diary.
- If you write a diary, it will draw a picture for you.
- A picture diary with just a few lines
- Share your picture diaries with friends

## ⚙️ Program Structure

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/eb0de95b-a121-4928-ad48-5a7df6a353f6/889e4da4-8e5e-41ca-8c2d-ebacc079c133/Untitled.png)

## Technology Description

## Dreambooth

we use *Dreambooth - trained the model with 3 characters.

- According to the recommended usage, the learning was conducted with the number of image data sets * 100.
- UNet_Training_steps are 2e-6.
- Text_Encoder_Training steps are 350, Text_Encoder_Learning_Rate is 1e-6

you can download this model in here : https://huggingface.co/Jaym1207/character_model_v1/tree/main

reference: https://github.com/google/dreambooth

## ChatGPT api

we use ChatGPT3.5 turbo model to summarize diary in one line.

## How to use

1. download our model - Link
2. Get your chatGPT api key and put your key in Flask code.
3. Run the Flask code
4. Run the Flutter code
