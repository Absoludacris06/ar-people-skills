class Ability < ActiveRecord::Base
  belongs_to :user
  belongs_to :skill

  before_create :default_proficiency

  private

  def default_proficiency
  	self.proficiency ||= 0
  end
end
