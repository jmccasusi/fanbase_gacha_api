class UsersController < ApplicationController
  before_action :authenticate_user, except: [:create]
  before_action :set_user, only: [:show, :update, :destroy]

  # GET /users
  def index
    @users = User.all
    jwt = request.headers['Authorization'].split(' ').last
    puts token
    decoded_token = JWT.decode jwt, Rails.application.credentials.secret_key_base, true, { :algorithm => 'HS256' }
    current_user = User.find((decoded_token[0])['sub'])
    puts current_user

    render json: current_user.to_json(include: :groups)
  end

  def login
    # @users = User.all
    # jwt = request.headers['Authorization'].split(' ').last
    # puts token
    # decoded_token = JWT.decode jwt, Rails.application.secrets.secret_key_base, true, { :algorithm => 'HS256' }
    # current_user = User.find((decoded_token[0])['sub'])
    # puts current_user

    # render json: current_user.to_json(include: :groups)
  end

  # GET /users/1
  def show
    render json: @user
  end

  # POST /users
  def create
    @user = User.new(user_params)
    
    p @user

    if @user.save
      UserGroupRelation.create([
        {
            user_id: @user.id,
            group_id: 1
        }
      ]
      )
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:email, :username, :password, :password_confirmation)
    end
end
