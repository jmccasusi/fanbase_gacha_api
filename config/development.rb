Rails.application.configure do 
    config.action_cable.url = "ws://localhost:3000/cable"
    Rails.application.config.action_cable.allowed_request_origins = ['http://localhost:3001']
  end 