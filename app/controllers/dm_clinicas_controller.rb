class DmClinicasController < ApplicationController
  before_action :set_dm_clinica, only: [:show, :edit, :update, :destroy]

  # GET /dm_clinicas
  # GET /dm_clinicas.json
  def index
    @dm_clinicas = DmClinica.all
  end

  # GET /dm_clinicas/1
  # GET /dm_clinicas/1.json
  def show
  end

  # GET /dm_clinicas/new
  def new
    @dm_clinica = DmClinica.new
  end

  # GET /dm_clinicas/1/edit
  def edit
  end

  # POST /dm_clinicas
  # POST /dm_clinicas.json
  def create
    @dm_clinica = DmClinica.new(dm_clinica_params)

    respond_to do |format|
      if @dm_clinica.save
        format.html { redirect_to @dm_clinica, notice: 'Dm clinica was successfully created.' }
        format.json { render :show, status: :created, location: @dm_clinica }
      else
        format.html { render :new }
        format.json { render json: @dm_clinica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dm_clinicas/1
  # PATCH/PUT /dm_clinicas/1.json
  def update
    respond_to do |format|
      if @dm_clinica.update(dm_clinica_params)
        format.html { redirect_to @dm_clinica, notice: 'Dm clinica was successfully updated.' }
        format.json { render :show, status: :ok, location: @dm_clinica }
      else
        format.html { render :edit }
        format.json { render json: @dm_clinica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dm_clinicas/1
  # DELETE /dm_clinicas/1.json
  def destroy
    @dm_clinica.destroy
    respond_to do |format|
      format.html { redirect_to dm_clinicas_url, notice: 'Dm clinica was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dm_clinica
      @dm_clinica = DmClinica.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dm_clinica_params
      params.require(:dm_clinica).permit(:especialidade, :nome, :endereco, :bairro, :cep, :cidade, :estado, :telefone, :logotipo, :latitude, :longitude, :inicio_atendimento, :terminio)
    end
end
