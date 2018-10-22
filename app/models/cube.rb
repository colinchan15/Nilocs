class Cube < ApplicationRecord
	
	belongs_to :user, optional: true

	mount_uploader :image, AvatarUploader # for carrierwave
	serialize :image, JSON # ONLY FOR SQLITE

	validate :title, :brand, :model, :price, presence: true # validates that these line items are non-null
	validate :description, length: {maximum: 1000, too_long: "%{count} characters is the maximum # of chars allowed... cmon man..."}
	validate :title, length: {maximum: 100, too_long: "bro why is your title %{count} chars long... give me a new title"}
	validate :price, length: {maximum: 7}

	BRAND = %w{Moyu Gans Valk Yuxin Dayan Cubicle FangShi}
	FINISH = %w{Matte Glossy Solid Metallic Pearlescent Special}
	CONDITION = %w{New Excellent Mint Used Fair Poor}
end
