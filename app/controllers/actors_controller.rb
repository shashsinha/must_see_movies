class ActorsController < ApplicationController
  before_action :set_actor, only: [:show, :edit, :update, :destroy]

  # GET /actors
  def index
    @actors = Actor.all
  end

  # GET /actors/1
  def show
  end

  # GET /actors/new
  def new
    @actor = Actor.new
  end

  # GET /actors/1/edit
  def edit
  end

  # POST /actors
  def create
    @actor = Actor.new(actor_params)

    if @actor.save
      message = 'Actor was successfully created.'
      if Rails.application.routes.recognize_path(request.referrer)[:controller] != Rails.application.routes.recognize_path(request.path)[:controller]
        redirect_back fallback_location: request.referrer, notice: message
      else
        redirect_to @actor, notice: message
      end
    else
      render :new
    end
  end

  # PATCH/PUT /actors/1
  def update
    if @actor.update(actor_params)
      redirect_to @actor, notice: 'Actor was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /actors/1
  def destroy
    @actor.destroy
    message = "Actor was successfully deleted."
    if Rails.application.routes.recognize_path(request.referrer)[:controller] != Rails.application.routes.recognize_path(request.path)[:controller]
      redirect_back fallback_location: request.referrer, notice: message
    else
      redirect_to actors_url, notice: message
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_actor
      @actor = Actor.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def actor_params
      params.require(:actor).permit(:actor_name, :starred_in_id, :actor_dob, :actor_bio, :actor_image)
    end
end
