class DeckCategoryRelationsController < ApplicationController
  before_action :set_deck_category_relation, only: [:show, :update, :destroy]

  # GET /deck_category_relations
  def index
    @deck_category_relations = DeckCategoryRelation.all

    render json: @deck_category_relations
  end

  # GET /deck_category_relations/1
  def show
    render json: @deck_category_relation
  end

  # POST /deck_category_relations
  def create
    @deck_category_relation = DeckCategoryRelation.new(deck_category_relation_params)

    if @deck_category_relation.save
      render json: @deck_category_relation, status: :created, location: @deck_category_relation
    else
      render json: @deck_category_relation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /deck_category_relations/1
  def update
    if @deck_category_relation.update(deck_category_relation_params)
      render json: @deck_category_relation
    else
      render json: @deck_category_relation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /deck_category_relations/1
  def destroy
    @deck_category_relation.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deck_category_relation
      @deck_category_relation = DeckCategoryRelation.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def deck_category_relation_params
      params.require(:deck_category_relation).permit(:deck_id, :category_id)
    end
end
