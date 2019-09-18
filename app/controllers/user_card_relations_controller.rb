class UserCardRelationsController < ApplicationController  
#   before_action :authenticate_user

 # GET /cards
  def index
    @claims = UserCardRelation.all

    render json: @claims
  end

  def group
    group_id = params[:group_id]
    @group_cards = UserCardRelation.where(group_id: group_id);

    render json: @group_cards.to_json(include: [{:user => { :only => [:id, :username] }}, :card])
  end

  def claim
    user_id = params[:user_id];
    card_id = params[:card_id];
    group_id = params[:group_id];

    if !UserCardRelation.where(group_id: group_id, card_id: card_id).exists?
        UserCardRelation.create(
            {
                user_id: user_id,
                card_id: card_id,
                group_id: group_id
            }
        )
    else
        p 'ERROR! CARD ALREADY OWNED'
    end
  end
end