class WelcomeController < ApplicationController
    def index
    end
    def compose
        @baseherbs = Baseherb.all
    end
    def pot
        @baseherb = Baseherb.find(params[:id])
        #@addon = @baseherb.addons.find(params[:id])
    end
end
