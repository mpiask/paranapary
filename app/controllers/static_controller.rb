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
end
