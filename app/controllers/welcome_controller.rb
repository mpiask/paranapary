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
    def brews
        @baseherb = Baseherb.find(params[:id])     
    end
    def herbalab
        @herbs = Baseherb.all
        Addon.find_each do |addon|
            @herbs << addon
        end
    end
    def about
    end
    def order
    end
end
