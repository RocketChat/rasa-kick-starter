from rasa_rocketchat

add . /opt/bot_rasa

run pip install sklearn_crfsuite spacy
run python -m spacy download en

workdir /opt/bot_rasa

cmd bash -c "make train && make run_conversation"
