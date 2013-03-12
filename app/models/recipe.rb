class Recipe < ActiveRecord::Base
  attr_accessible :cost, :image, :ingredients, :last_made, :made_by, :name, :serves

	#validates :name, presence: true, length: {maximum: 50}
	validates_presence_of :name, :ingredients, :made_by
	validates_numericality_of :serves, :only_integer => true
	validates_uniqueness_of :name
end
