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
		params["herbmix"].each do |ingredient|
			if ingredient["quantity"].to_i > 0
				Ingredient.create(ingredients_params(ingredient))
			end
		end
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
			params.permit(:quantity, :herb_id)
		end
end
