# bot_rasa

A simple bot to test the integration with Rocket.Chat.

## Quickstart

```sh
docker-compose up -d mongo
docker-compose up -d mongo-init-replica
docker-compose up -d rocketchat
```
Acess http://localhost:3000/ 

Create an `admin` user with the password `admin` and run the following command to create the RASA bot:

```sh
python3 scripts/bot_config.py -an admin -ap admin -bn bot_rasa -bp bot_rasa -r http://localhost:3000
```

### WebHook

Go to **Administration > New Integration > Outgoing webhook**.
Inside the configuration insert this:

```
Event Trigger: Message Sent
Enabled: True
Channel: #general
URLs: http://bot:5005/webhooks/rocketchat/webhook
Post as: bot_rasa
```

**Save** all the changes.

### Credentials

Update your `credentials.yml` file with Rasa bot's username and password.

### Train the Model

```sh
docker run -it -v $(pwd)/bot_rasa:/app rasa/rasa train
```

### Running

```sh
docker-compose up -d bot
```

### Example

![example]

[example]: rasa_bot_example.png
