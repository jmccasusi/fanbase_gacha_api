Rails.application.configure do 
    config.action_cable.url = "ws://fanbase-gacha-api.herokuapp.com/cable"
    config.action_cable.allowed_request_origins = ['http://localhost:3001']
  end 