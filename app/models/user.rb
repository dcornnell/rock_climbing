class User < ActiveRecord::Base
	has_many :attempts
	# has_many :routes, through :attempts
	validates :name, presence: true
	validates_presence_of :contact
	validates_uniqueness_of :contact
	has_secure_password
	mount_uploader :user_photo, UserPhotoUploader
end


