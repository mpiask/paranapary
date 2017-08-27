class StaticController < ApplicationController
	def start
	end

	def home
	end

	def about
	end

	def why
	end

	def select
		#redirect_to order_path if order_exists?
		@baseherbs = Herb.where(base: true).take(3)
	end

	def herbalab
		@herbs = Herb.all.decorate
	end

	def showherb
		@herb = Herb.find(params[:id]).decorate
	end
end
