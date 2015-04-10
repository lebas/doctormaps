class DmEspecialidade < ActiveRecord::Base
	has_many :DmMedicos
	has_many :DmClinicas
	has_many :DmDentistas
	validates :especialidade, presence: true
end
