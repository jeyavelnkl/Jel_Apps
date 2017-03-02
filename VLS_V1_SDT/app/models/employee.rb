class Employee < ApplicationRecord
	belongs_to :project
	belongs_to :location

	 # attr_accessor :primary_skill

	searchable do   
		text :name , :primary_skill_val 
	end
    

    def primary_skill_val
    	primary_skill.lowercase
    end


	#, :secondary_skill, :other_skill, :exp_domain, :exp_technologies, :exp_functions
end
