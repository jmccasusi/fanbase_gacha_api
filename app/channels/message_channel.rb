class MessageChannel < ApplicationCable::Channel  
    def subscribed
      stream_from 'messages#create'
      # ActionCable.server.broadcast 'hello'
    end
  end  