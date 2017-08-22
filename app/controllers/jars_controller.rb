class JarsController < ApplicationController

  def new
    @baseherb = Herb.find(params[:base])
    redirect_to select_path unless @baseherb.base
    @addons = Herb.where(base: false, base_id: params[:base]).take(4)
    @ingredients = []
    @addons.each { |addon| @ingredients << Ingredient.new(herb_id: addon.id) }
    @ingredients << Ingredient.new(herb_id: @baseherb.id)
  end

  def create
    create_order unless order_exists?
    @jar = Jar.create(quantity: 1, order_id: current_order.id)
    params["herbmix"].each do |ingr|
      if ingr["quantity"].to_i > 0
        ingredient = Ingredient.new(ingredients_params(ingr))
        ingredient.jar_id = @jar.id
        ingredient.save
      end
    end
    redirect_to current_order
  end


  private
    def ingredients_params(params)
      params.permit(:quantity, :herb_id, :jar_id)
    end
end
