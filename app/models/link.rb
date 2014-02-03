class Link < ActiveRecord::Base
	# Relationships <3
	belongs_to :user
	has_many :comments
	has_many :votes
end
