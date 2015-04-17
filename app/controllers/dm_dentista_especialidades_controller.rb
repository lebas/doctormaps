class DmDentistaEspecialidadesController < InheritedResources::Base

  private

    def dm_dentista_especialidade_params
      params.require(:dm_dentista_especialidade).permit(:dentista, :especialidade)
    end
end

