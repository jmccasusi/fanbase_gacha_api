class GroupsController < ApplicationController
  before_action :set_group, only: [:show, :update, :destroy]

  # GET /groups
  def index
    @groups = Group.all

    render json: @groups.to_json(include: [:users, :rooms])
  end

  # GET /groups/1
  def show
    render json: @group.to_json(
      include: [
        {:owner => { :only => [:username, :id, :online_status, :last_activity_at] }},
        {:users => { :only => [:username, :id, :online_status, :last_activity_at],
          include: {:cards => {
            include: {:deck => { :only => [:name] }}
            }
          }
        }}, 
        {:rooms => { :only => [:name, :id, :group_id], 
          include: {:messages => { :only => [ :id, :content, :created_at, :room_id], 
            include: [{:user => { :only => [:username, :id] }
            }]
          }}
        }},
        {:categories => {
            include: {:decks => {
              include: :cards
            }}
        }}
      ], :only => [ :name, :is_private, :roll_interval, :claim_interval ]
    )
  end

  # POST /groups
  def create
    @group = Group.new(group_params)

    if @group.save
      render json: @group, status: :created, location: @group
    else
      render json: @group.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /groups/1
  def update
    if @group.update(group_params)
      render json: @group
    else
      render json: @group.errors, status: :unprocessable_entity
    end
  end

  # DELETE /groups/1
  def destroy
    @group.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group
      @group = Group.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def group_params
      params.require(:group).permit(:name, :is_private)
    end
end
