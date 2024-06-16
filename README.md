Welcome to the piciary wiki!

# 🖼️ Piciary

*make your diary a calender*
![image](https://github.com/yeyounging/piciary/assets/133792082/136ce6b1-b6ba-40f8-8997-1fe1b40d0a29)


Social picture diary APP

- Select your character. Your character will appear in the picture diary.
- If you write a diary, it will draw a picture for you.
- A picture diary with just a few lines
- Share your picture diaries with friends

## ⚙️ Program Structure

![image](https://github.com/yeyounging/piciary/assets/133792082/a4c3c0f1-b3aa-4e4b-a389-6d3c102a49a6)



## 💟 Technology Description

# 1.Dreambooth

we use *Dreambooth - trained the model with 3 characters.

<img width="968" alt="image" src="https://github.com/yeyounging/piciary/assets/133792082/c497c422-4bdf-4ba2-afc5-30cfa9aece1d">


- According to the recommended usage, the learning was conducted with the number of image data sets * 100.
- UNet_Training_steps are 2e-6.
- Text_Encoder_Training steps are 350, Text_Encoder_Learning_Rate is 1e-6

you can download this model in here : https://huggingface.co/Jaym1207/character_model_v1/tree/main

reference: https://github.com/google/dreambooth

# 2.ChatGPT api

we use ChatGPT3.5 turbo model to summarize diary in one line.

##👩🏻‍💻 Contributer
<h3> Team members </h3>

| Profile | Name | Role | Project Repository |
| :---: | :---: | :---: | :---: |
| <a href="https://github.com/yeyounging"><img src="https://avatars.githubusercontent.com/u/133792082?v=4" height="120px"></a> | 공예영 <br> **yeyounging**| Frontend & Backend|
| <a href="https://github.com/Easymean1207"><img src="https://avatars.githubusercontent.com/u/117882085?v=4" height="120px"></a> | 이지민 <br> **Easymean1207**| Frontend & Modeling| 



## How to use

1. download our model - [Link](https://huggingface.co/Jaym1207/character_model_v1/tree/main)
2. Get your chatGPT api key and put your key in Flask code.
3. Run the Flask code
4. Run the Flutter code
