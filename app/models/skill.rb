class Skill < ActiveRecord::Base
	has_many :abilities
	has_many :users, :through => :abilities
	validates :name, uniqueness: true, presence: true
	validates :context, presence: true

	def user_with_proficiency(power_level)
		user_skill = Ability.where(skill_id: self.id, proficiency: power_level).first
		User.find(user_skill.user_id)
	end
end
