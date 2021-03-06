class JarsController < ApplicationController
  before_action :correct_order, only: [:destroy]

  def new
    baseherb = Herb.find(params[:base])
    redirect_to select_path unless baseherb.base
    addons = Herb.where(base: false, base_id: params[:base]).take(4)

    create_order unless order_exists?
    @jar = current_order.jars.build
    @jar.ingredients.build
    @herbs = addons << baseherb
  end

  def create
    @jar = current_order.jars.build(jar_params(params))
    if @jar.save
      redirect_to jars_path
    else
      redirect_to select_path
    end
  end

  def destroy
    @jar = Jar.find(params[:id])
    @jar.ingredients.delete_all
    @jar.delete
    redirect_to jars_path
  end

  def index
    redirect_to select_path unless order_exists?
    @jars = Jar.where(order_id: current_order.id)
  end


  private

    def correct_order
      @order = Jar.find(params[:id]).order
      redirect_to(current_order) unless current_order?(@order)
    end
    def jar_params(params)
      params.require(:jar).permit(:quantity, :herb_id, :jar_id, ingredients_attributes: [:herb_id, :quantity])
    end
end
