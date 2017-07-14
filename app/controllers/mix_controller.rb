class MixController < ApplicationController
	def select
		@baseherbs = Herb.where(base: true).take(3)
	end
	def mix
		@baseherb = Herb.find(params[:id])
		@addons = Herb.where(base: false, base_id: params[:id]).take(4)
		#@index = 0
	end
	def herbalab
		@herbs = Herb.all
	end
	def showherb
		@herb = Herb.find(params[:id])
	end
end
