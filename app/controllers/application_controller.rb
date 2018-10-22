class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	# gave access to cart anywhere in the app so that it can be accessed on the nav bar etc.
	include CurrentCart
	before_action :set_cart
end
