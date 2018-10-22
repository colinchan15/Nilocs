# allows to know that you are browsing a specific cart
# like a cookie sort of i think...

module CurrentCart

	private


	def set_cart
		@cart = Cart.find(session[:cart_id])
	rescue ActiveRecord::RecordNotFound
		# if cart can't be found, create a new cart and assign its session id == cart.id
		@cart = Cart.create
		session[:cart_id] = @cart.id

	end


end