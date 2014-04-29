class Attempt < ActiveRecord::Base
	belongs_to :user
	belongs_to :route
	validates :date_attempted, presence: true
end
