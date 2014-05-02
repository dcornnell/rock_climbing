class User < ActiveRecord::Base
	has_many :attempts
	has_many :routes, through :attempts
	validates :name, presence: true
end


