class MixController < ApplicationController
	def select
		@baseherbs = Herb.where(base: true).take(3)
	end
	def mix
		@baseherb = Herb.find(params[:id])
		redirect_to select_path unless @baseherb.base
		@addons = Herb.where(base: false, base_id: params[:id]).take(4)
	end
	def herbalab
		@herbs = Herb.all
	end
	def showherb
		@herb = Herb.find(params[:id])
	end
end
