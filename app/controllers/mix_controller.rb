class MixController < ApplicationController
	def select
		@baseherbs = Herb.where(base: true).take(3)
	end

	def mix
		@baseherb = Herb.find(params[:id])
		redirect_to select_path unless @baseherb.base
		@addons = Herb.where(base: false, base_id: params[:id]).take(4)
		@ingredients = []
		@addons.each { |addon| @ingredients << Ingredient.new(herb_id: addon.id) }
		@ingredients << Ingredient.new(herb_id: @baseherb.id)
	end

	def createjar
		
	end


	# def mix
	# 	@baseherb = Herb.find(params[:id])
	# 	redirect_to select_url unless @baseherb.base == true
	# 	@addons = Herb.where(base: false, base_id: params[:id]).take(4)
	# 	#@index = 0
	# 	@herbs = []
	# 	@addons.each do |addon|
	# 		@herbs << Jar.new(herb_id: addon.id)
	# 	end
	# 	@herbs << Jar.new(herb_id: @baseherb.id)
	# end
	# def createjar
	# 	@order = Order.create(status: 1)
	# 	@cart = Cart.create(order_id: @order.id)
	# 	params["herbmix"].each do |herbinjar|
	# 	if herbinjar["quantity"].to_i > 0
	# 		herbinjar["cart_id"] = @cart.id
	# 		Jar.create(herbmix_params(herbinjar))
	# 	end
	# end

	def herbalab
		@herbs = Herb.all
	end
	def showherb
		@herb = Herb.find(params[:id])
	end
end
