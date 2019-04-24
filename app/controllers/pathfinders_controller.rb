class PathfindersController < ApplicationController
  before_action :set_pathfinder, only: [:show, :edit, :update, :destroy]

  # GET /pathfinders
  # GET /pathfinders.json
  def index
    @pathfinders = Pathfinder.all
  end

  # GET /pathfinders/1
  # GET /pathfinders/1.json
  def show
  end

  # GET /pathfinders/new
  def new
    @pathfinder = Pathfinder.new
  end

  # GET /pathfinders/1/edit
  def edit
  end

  # POST /pathfinders
  # POST /pathfinders.json
  def create
    @pathfinder = Pathfinder.new(pathfinder_params)

    respond_to do |format|
      if @pathfinder.save
        format.html { redirect_to @pathfinder, notice: 'Pathfinder was successfully created.' }
        format.json { render :show, status: :created, location: @pathfinder }
      else
        format.html { render :new }
        format.json { render json: @pathfinder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pathfinders/1
  # PATCH/PUT /pathfinders/1.json
  def update
    respond_to do |format|
      if @pathfinder.update(pathfinder_params)
        format.html { redirect_to @pathfinder, notice: 'Pathfinder was successfully updated.' }
        format.json { render :show, status: :ok, location: @pathfinder }
      else
        format.html { render :edit }
        format.json { render json: @pathfinder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pathfinders/1
  # DELETE /pathfinders/1.json
  def destroy
    @pathfinder.destroy
    respond_to do |format|
      format.html { redirect_to pathfinders_url, notice: 'Pathfinder was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pathfinder
      @pathfinder = Pathfinder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pathfinder_params
      params.require(:pathfinder).permit(:name, :last_name, :birthday, :dni, :unit_id)
    end
end
