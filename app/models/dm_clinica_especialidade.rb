class DmClinicaEspecialidade < ActiveRecord::Base
  has_one :dm_especialidades
  has_one :dm_clinicas
end
