class OrdersController < ApplicationController
  def edit
    redirect_to select_path unless current_order.jars.any?
    @order = current_order
    @jars = Jar.where(order_id: @order.id)
  end

  def update
  	@order = current_order
  	if @order.update_attributes(order_params)
      flash[:success] = "Profile updated"
      redirect_to current_order
  	else
  		render 'edit'
  	end
  end

  def show
    @order = current_order
  end

  private
    def order_params
      params.require(:order).permit(:name, :surname, :email, :street, :zipcode, :city, :phone)
    end
end
