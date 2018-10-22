class Cube < ApplicationRecord
	mount_uploader :image, AvatarUploader # for carrierwave
	serialize :image, JSON # ONLY FOR SQLITE
	belongs_to :user, optional: true

	validate :title, :brand, :model, :price, presence: true # validates that these line items are non-null
	validate :description, length: {maximum: 1000, too_long: "%{count} characters is the maximum # of chars allowed... cmon man..."}
	validate :title, length: {maximum: 100, too_long: "bro why is your title %{count} chars long... give me a new title"}
	validate :price, length: {maximum: 7}

	
end
