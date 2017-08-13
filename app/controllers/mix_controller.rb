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
		@jar = Jar.create(quantity: 1)
		params["herbmix"].each do |ingr|
			if ingr["quantity"].to_i > 0
				ingredient = Ingredient.new(ingredients_params(ingr))
				ingredient.jar_id = @jar.id
				ingredient.save
			end
		end
		redirect_to order_path
	end

	def order

	end

	def herbalab
		@herbs = Herb.all
	end
	def showherb
		@herb = Herb.find(params[:id])
	end

	private
		def ingredients_params(params)
			params.permit(:quantity, :herb_id, :jar_id)
		end
end
