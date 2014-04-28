class Route < ActiveRecord::Base
	belongs_to :location
	has_many :attempts
end
