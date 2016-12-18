class DmDentistaController < ApplicationController
  before_action :set_dm_dentistum, only: [:show, :edit, :update, :destroy]

  # GET /dm_dentista
  # GET /dm_dentista.json
  def index
    @dm_dentista = DmDentistum.all
  end

  # GET /dm_dentista/1
  # GET /dm_dentista/1.json
  def show
  end

  # GET /dm_dentista/new
  def new
    @dm_dentistum = DmDentistum.new
  end

  # GET /dm_dentista/1/edit
  def edit
  end

  # POST /dm_dentista
  # POST /dm_dentista.json
  def create
    @dm_dentistum = DmDentistum.new(dm_dentistum_params)

    respond_to do |format|
      if @dm_dentistum.save
        format.html { redirect_to @dm_dentistum, notice: 'Dm dentistum was successfully created.' }
        format.json { render :show, status: :created, location: @dm_dentistum }
      else
        format.html { render :new }
        format.json { render json: @dm_dentistum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dm_dentista/1
  # PATCH/PUT /dm_dentista/1.json
  def update
    respond_to do |format|
      if @dm_dentistum.update(dm_dentistum_params)
        format.html { redirect_to @dm_dentistum, notice: 'Dm dentistum was successfully updated.' }
        format.json { render :show, status: :ok, location: @dm_dentistum }
      else
        format.html { render :edit }
        format.json { render json: @dm_dentistum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dm_dentista/1
  # DELETE /dm_dentista/1.json
  def destroy
    @dm_dentistum.destroy
    respond_to do |format|
      format.html { redirect_to dm_dentista_url, notice: 'Dm dentistum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dm_dentistum
      @dm_dentistum = DmDentistum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dm_dentistum_params
      params.require(:dm_dentistum).permit(:especialidade, :nome, :endereco, :bairro, :cep, :cidade, :estado, :cro, :telefone, :logotipo, :latitude, :longitude, :inicio_atendimento, :terminio)
    end
end
