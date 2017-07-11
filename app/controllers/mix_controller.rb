class MixController < ApplicationController
	def select
		@baseherbs = Herb.where(base: true).take(3)
	end
	def mix
		@baseherb = Herb.find(1)
		@addons = Herb.where(base: false).take(4)
		@index = 0
	end
end
