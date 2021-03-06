class WorldsController < ApplicationController
  before_action :set_world, only: [:show, :edit, :update, :destroy]

  skip_before_action :authenticate_user!, :only => [:index]
  
  
  # GET /worlds
  # GET /worlds.json
def index
  @worlds = World.all
end
  # GET /worlds/1
  # GET /worlds/1.json
  def show
    
  end

  # GET /worlds/new
  def new
    @world = World.new
  end

  # GET /worlds/1/edit
  def edit
  end

  # POST /worlds
  # POST /worlds.json
  def create
    @world = World.new(world_params)
    #@world.user = current_user

    respond_to do |format|
      if @world.save
        format.html { redirect_to @world, notice: 'World was successfully created.' }
        format.json { render :show, status: :created, location: @world }
      else
        format.html { render :new }
        format.json { render json: @world.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /worlds/1
  # PATCH/PUT /worlds/1.json
  def update
    respond_to do |format|
      if @world.update(world_params)
        format.html { redirect_to @world, notice: 'World was successfully updated.' }
        format.json { render :show, status: :ok, location: @world }
      else
        format.html { render :edit }
        format.json { render json: @world.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /worlds/1
  # DELETE /worlds/1.json
  def destroy
    @world.destroy
    respond_to do |format|
      format.html { redirect_to worlds_url, notice: 'World was successfully destroyed.' }
      format.json { head :no_content }
    end
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_world
      @world = World.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def world_params
      params.require(:world).permit(:name, :description, :aesthetic,  :search)
    end
end
