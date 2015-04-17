class DmMedicoEspecialidade < ActiveRecord::Base
  has_one :dm_especialidades
  has_one :dm_medicos
end
