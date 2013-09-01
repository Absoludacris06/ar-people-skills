class CreateAbilities < ActiveRecord::Migration
  def change
  	create_table :abilities do |t|
  		t.belongs_to :user
  		t.belongs_to :skill
  		t.integer :proficiency
  		t.timestamps
  	end
  end
end
