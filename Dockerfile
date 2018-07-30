from registry.gitlab.com/arthurtemporim/rasa_rocketchat_bot

add . /opt/bot_rasa

workdir /opt/bot_rasa

cmd bash -c "make train && make run_conversation"
