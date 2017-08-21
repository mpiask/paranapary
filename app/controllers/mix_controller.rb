class MixController < ApplicationController
	def select
		#redirect_to order_path if order_exists?
		@baseherbs = Herb.where(base: true).take(3)
	end

	def order
		redirect_to select_path unless order_exists?
		@jars = Jar.where(order_id: current_order.id)
	end
end
