# README

[![Greenkeeper badge](https://badges.greenkeeper.io/laujonat/gem_chat.svg)](https://greenkeeper.io/)

## Apollo GraphQL on Rails
Rails Apollo GraphQL client.

### Background 
This application runs Rails as an API only application and bootstrapped with `create-react-app` to generate an Express Node server.<br>

#### Routes
By default, Rails runs on local port `3000`.  To run the React client independently from the Rails API, all endpoints are prefixed with `/api/`.  

Inside `client/package.json`, we designate a `proxy` such that all API requests are forwarded to port `3001`. This is required to prevent any CORS security flags to be trigged by the Rails application.  The benefit of this is that you will not have to set a base url in the webpack configuration. 
```json
"proxy": "http://localhost:3001/"
```

### Installation
```
$ bundle install && cd client && npm install
```
### Pusher Websockets
This application uses Pusher websockets the real-time functionality. 
Register a Pusher account to create a new Rails application. 
You will need to set the following found under the `App Keys` tab of the application menu. 
```
app_id 
key 
secret 
cluster
```
#### Pusher Secret Keys
Run `figaro install`. <br>
This will generate a `config/application.yml` file. In the `application.yml` file add your `Pusher` keys.
```
# config/application.yml

PUSHER_APP_ID: 'xxxxxx'
PUSHER_KEY: 'xxxxxxxxxxxxxxxxx'
PUSHER_SECRET: 'xxxxxxxxxxxxxx'
PUSHER_CLUSTER: 'xx'
```


### Running the Application


The `Procfile` specifies the commands `Foreman` will use to run the application.  Bundle Rails and start up React together with a `Rake` task.
```bash
$ rake start 
```


### Dependencies
Note recent updates to gem `graphql` is not compatible with previous versions. <br>
For troubleshooting, verify versions list below.
```bash
# npm version
npm(6.9.0)

# react version 
react(16.8.6)

# ruby version 
ruby(2.6.1)
rails(5.1)

# gems
pg(1.1.4)

# graphql server  
graphiql-rails (1.7.0)
graphql (1.9.4)

# devise authentication 
devise (4.6.2)
devise-jwt (0.5.9)
devise_token_auth (1.1.0)
```
