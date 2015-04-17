class DmDentistaEspecialidade < ActiveRecord::Base
  has_one :dm_especialidades
  has_one :dm_dentistas
end
