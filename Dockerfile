from arthurtemporim/rasa_rocketchat

add . /opt/bot_rasa

workdir /opt/bot_rasa

cmd bash -c "make train && make run_conversation"
