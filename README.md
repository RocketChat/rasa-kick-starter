# bot_rasa

A simple bot to test the integration with Rocket.Chat.

## Quickstart

```sh
docker-compose up -d mongo
docker-compose up -d mongo-init-replica
docker-compose up -d rocketchat
```
Acess http://localhost:3000/ 

Create an `admin` user with the password `admin` and run the command:

```sh
python3 scripts/bot_config.py -an admin -ap admin -bn bot_rasa -bp bot_rasa -r http://localhost:3000
```

### WebHook

Go to **Administration > New Integration > Outgoing webhook**.
Inside the configuration insert this:

```
Event Trigger: Message Sent
Enabled: True
Channel: @bot_rasa
URLs: http://bot_rasa:5005/webhook
Post as: bot_rasa
```

**Save** all the changes.

### Credentials

Update your `credentials.yml` file.

### Running

```sh
docker-compose up bot_rasa
```

### Example

![example](https://github.com/arthurTemporim/testrasarocketchat/wiki/images/example.gif)
