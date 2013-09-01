class User < ActiveRecord::Base
	has_many :abilities, dependent: :destroy
	has_many :skills, :through => :abilities

	def proficiency_for(skill)
		Ability.where(skill_id: skill.id, user_id: self.id).first.proficiency
	end

	def set_proficiency_for(skill, power_level)
		user_skill = Ability.where(skill_id: skill.id, user_id: self.id).first
		user_skill.proficiency = power_level
		user_skill.save
	end
end
