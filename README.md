# README

## Apollo GraphQL on Rails
Rails Apollo GraphQL client.

### Background 
This application runs Rails as an API only application and bootstrapped with `create-react-app` to generate an Express Node server.<br>

#### Routes
By default, Rails runs on local port 3000.  To run the React client independently from the Rails API, all endpoints are prefixed with `/api/`.  

Inside `client/package.json`, we designate a `proxy` such that all API requests are forwarded to port 3001. This is required to prevent any CORS security flags to be trigged by the Rails application.  The benefit of this is that you will not have to set a base url in the webpack configuration. 
```json
"proxy": "http://localhost:3001/"
```

### Installation
```
$ bundle install && cd client && npm install
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
