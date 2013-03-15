class Review < ActiveRecord::Base
	belongs_to :recipe
  attr_accessible :author, :content, :rating, :title
end
