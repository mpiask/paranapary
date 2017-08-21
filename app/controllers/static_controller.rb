class StaticController < ApplicationController
	def start
	end
	def home
	end
	def about
	end
	def herbalab
		@herbs = Herb.all
	end
	def showherb
		@herb = Herb.find(params[:id])
	end
end
