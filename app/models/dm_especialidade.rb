class DmEspecialidade < ActiveRecord::Base
	has_many :Dm_medico_especialidades
	has_many :Dm_clinica_especialidades
	has_many :Dm_dentista_especialidades
	validates :especialidade, :presence => true
end
