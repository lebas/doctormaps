class DmClinicaEspecialidadesController < InheritedResources::Base

  private

    def dm_clinica_especialidade_params
      params.require(:dm_clinica_especialidade).permit(:clinica, :especialidade)
    end
end

