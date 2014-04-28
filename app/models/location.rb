class Location < ActiveRecord::Base
	has_many :routes
	has_many :attempts, through :routes
end
