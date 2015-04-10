class DmMedicosController < ApplicationController
  before_action :set_dm_medico, only: [:show, :edit, :update, :destroy]

  # GET /dm_medicos
  # GET /dm_medicos.json
  def index
    @dm_medicos = DmMedico.all
  end

  # GET /dm_medicos/1
  # GET /dm_medicos/1.json
  def show
  end

  # GET /dm_medicos/new
  def new
    @dm_medico = DmMedico.new
  end

  # GET /dm_medicos/1/edit
  def edit
  end

  # POST /dm_medicos
  # POST /dm_medicos.json
  def create
    @dm_medico = DmMedico.new(dm_medico_params)

    respond_to do |format|
      if @dm_medico.save
        format.html { redirect_to @dm_medico, notice: 'Dm medico was successfully created.' }
        format.json { render :show, status: :created, location: @dm_medico }
      else
        format.html { render :new }
        format.json { render json: @dm_medico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dm_medicos/1
  # PATCH/PUT /dm_medicos/1.json
  def update
    respond_to do |format|
      if @dm_medico.update(dm_medico_params)
        format.html { redirect_to @dm_medico, notice: 'Dm medico was successfully updated.' }
        format.json { render :show, status: :ok, location: @dm_medico }
      else
        format.html { render :edit }
        format.json { render json: @dm_medico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dm_medicos/1
  # DELETE /dm_medicos/1.json
  def destroy
    @dm_medico.destroy
    respond_to do |format|
      format.html { redirect_to dm_medicos_url, notice: 'Dm medico was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dm_medico
      @dm_medico = DmMedico.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dm_medico_params
      params.require(:dm_medico).permit(:especialidade, :nome, :endereco, :bairro, :cep, :cidade, :estado, :crm, :telefone, :logotipo, :latitude, :longitude, :inicio_atendimento, :terminio)
    end
end
