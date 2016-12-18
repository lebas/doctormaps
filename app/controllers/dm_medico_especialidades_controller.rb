class DmMedicoEspecialidadesController < InheritedResources::Base

  private

    def dm_medico_especialidade_params
      params.require(:dm_medico_especialidade).permit(:medico, :especialidade)
    end
end

