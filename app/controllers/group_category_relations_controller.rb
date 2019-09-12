class GroupCategoryRelationsController < ApplicationController
  before_action :set_group_category_relation, only: [:show, :update, :destroy]

  # GET /group_category_relations
  def index
    @group_category_relations = GroupCategoryRelation.all

    render json: @group_category_relations
  end

  # GET /group_category_relations/1
  def show
    render json: @group_category_relation
  end

  # POST /group_category_relations
  def create
    @group_category_relation = GroupCategoryRelation.new(group_category_relation_params)

    if @group_category_relation.save
      render json: @group_category_relation, status: :created, location: @group_category_relation
    else
      render json: @group_category_relation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /group_category_relations/1
  def update
    if @group_category_relation.update(group_category_relation_params)
      render json: @group_category_relation
    else
      render json: @group_category_relation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /group_category_relations/1
  def destroy
    @group_category_relation.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group_category_relation
      @group_category_relation = GroupCategoryRelation.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def group_category_relation_params
      params.fetch(:group_category_relation, {})
    end
end
