class DmPlanosaude < ActiveRecord::Base
	validates :nome, :key => "value", presence => true
	#tipo
end
