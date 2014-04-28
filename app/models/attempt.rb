class Attempt < ActiveRecord::Base
	belongs_to :user
	has_one :route
	validates :date_attempted, presence: true
end
