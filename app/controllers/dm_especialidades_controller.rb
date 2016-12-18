class DmEspecialidadesController < ApplicationController
  before_action :set_dm_especialidade, only: [:show, :edit, :update, :destroy]

  # GET /dm_especialidades
  # GET /dm_especialidades.json
  def index
    @dm_especialidades = DmEspecialidade.all
  end

  # GET /dm_especialidades/1
  # GET /dm_especialidades/1.json
  def show
  end

  # GET /dm_especialidades/new
  def new
    @dm_especialidade = DmEspecialidade.new
  end

  # GET /dm_especialidades/1/edit
  def edit
  end

  # POST /dm_especialidades
  # POST /dm_especialidades.json
  def create
    @dm_especialidade = DmEspecialidade.new(dm_especialidade_params)

    respond_to do |format|
      if @dm_especialidade.save
        format.html { redirect_to @dm_especialidade, notice: 'Dm especialidade was successfully created.' }
        format.json { render :show, status: :created, location: @dm_especialidade }
      else
        format.html { render :new }
        format.json { render json: @dm_especialidade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dm_especialidades/1
  # PATCH/PUT /dm_especialidades/1.json
  def update
    respond_to do |format|
      if @dm_especialidade.update(dm_especialidade_params)
        format.html { redirect_to @dm_especialidade, notice: 'Dm especialidade was successfully updated.' }
        format.json { render :show, status: :ok, location: @dm_especialidade }
      else
        format.html { render :edit }
        format.json { render json: @dm_especialidade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dm_especialidades/1
  # DELETE /dm_especialidades/1.json
  def destroy
    @dm_especialidade.destroy
    respond_to do |format|
      format.html { redirect_to dm_especialidades_url, notice: 'Dm especialidade was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dm_especialidade
      @dm_especialidade = DmEspecialidade.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dm_especialidade_params
      params.require(:dm_especialidade).permit(:especialidade)
    end
end
