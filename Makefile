run_conversation:
	python -m rasa_core.run -d bot_rasa/models/dialogue -u bot_rasa/models/nlu/current -p ${PORT} --connector ${CONNECTOR} --credentials credentials.yml

run_server:
	python -m rasa_core.server -d models/dialogue -u models/nlu/default/current -o out_server.log

train:
	python -m rasa_nlu.train --config bot_rasa/config_spacy.yml --data bot_rasa/data/bot_rasa_nlu.md --fixed_model_name current --path bot_rasa/models/ --project nlu
	python -m rasa_core.train -s bot_rasa/data/bot_rasa_stories.md -d bot_rasa/domain.yml -o bot_rasa/models/dialogue --epochs ${TRAINING_EPOCHS}
