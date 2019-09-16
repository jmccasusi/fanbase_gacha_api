class MessagesController < ApplicationController
  before_action :set_message, only: [:show, :update, :destroy]

  # GET /messages
  def index
    @messages = Message.all
    @messages = Room.find(params[:room_id]).messages

    # ActionCable.server.broadcast 'messages',
    #     {messages: @messages}

    render json: @messages
  end

  # GET /messages/1
  def show
    render json: @message
  end

  # POST /messages
  # def create
  #   @message = Message.new(message_params)
  #   @message.room_id = params[:room_id]

  #   if @message.save
  #     render json: @message, status: :created
  #   else
  #     render json: @message.errors, status: :unprocessable_entity
  #   end
  # end

  # def send
  #   ActionCable.server.broadcast 'messages',
  #       {id: message.id}
  # end

  def create
    message = Message.new(message_params)
    message.room_id = params[:room_id]

    @messages = Message.all
    @messages = Room.find(params[:room_id]).messages

    if message.save
      ActionCable.server.broadcast 'messages#create', message.to_json(
        include: {:user => { :only => [:username, :id] }})
      render json: @message, status: :created
    else
          render json: @message.errors, status: :unprocessable_entity
    end
  end


  # PATCH/PUT /messages/1
  def update
    if @message.update(message_params)
      render json: @message
    else
      render json: @message.errors, status: :unprocessable_entity
    end
  end

  # DELETE /messages/1
  def destroy
    @message.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_message
      @message = Message.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def message_params
      params.require(:message).permit(:content, :user_id)
    end
end
