class DmPlanosaudesController < ApplicationController
  before_action :set_dm_planosaude, only: [:show, :edit, :update, :destroy]

  # GET /dm_planosaudes
  # GET /dm_planosaudes.json
  def index
    @dm_planosaudes = DmPlanosaude.all
  end

  # GET /dm_planosaudes/1
  # GET /dm_planosaudes/1.json
  def show
  end

  # GET /dm_planosaudes/new
  def new
    @dm_planosaude = DmPlanosaude.new
  end

  # GET /dm_planosaudes/1/edit
  def edit
  end

  # POST /dm_planosaudes
  # POST /dm_planosaudes.json
  def create
    @dm_planosaude = DmPlanosaude.new(dm_planosaude_params)

    respond_to do |format|
      if @dm_planosaude.save
        format.html { redirect_to @dm_planosaude, notice: 'Dm planosaude was successfully created.' }
        format.json { render :show, status: :created, location: @dm_planosaude }
      else
        format.html { render :new }
        format.json { render json: @dm_planosaude.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dm_planosaudes/1
  # PATCH/PUT /dm_planosaudes/1.json
  def update
    respond_to do |format|
      if @dm_planosaude.update(dm_planosaude_params)
        format.html { redirect_to @dm_planosaude, notice: 'Dm planosaude was successfully updated.' }
        format.json { render :show, status: :ok, location: @dm_planosaude }
      else
        format.html { render :edit }
        format.json { render json: @dm_planosaude.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dm_planosaudes/1
  # DELETE /dm_planosaudes/1.json
  def destroy
    @dm_planosaude.destroy
    respond_to do |format|
      format.html { redirect_to dm_planosaudes_url, notice: 'Dm planosaude was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dm_planosaude
      @dm_planosaude = DmPlanosaude.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dm_planosaude_params
      params.require(:dm_planosaude).permit(:nome, :tipo)
    end
end
