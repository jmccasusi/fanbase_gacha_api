class UserCardRelationsController < ApplicationController  
#   before_action :authenticate_user

 # GET /cards
  def index
    @claims = UserCardRelation.all

    render json: @claims
  end


  def claim
    user_id = params[:user_id];
    card_id = params[:card_id];
    group_id = params[:group_id];

    UserCardRelation.create(
        {
            user_id: user_id,
            card_id: card_id,
            group_id: group_id
        }
    )
  end
end