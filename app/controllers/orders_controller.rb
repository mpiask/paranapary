class OrdersController < ApplicationController
    def edit
      redirect_to select_path unless order_exists?
      @jars = Jar.where(order_id: current_order.id)
    end
end
