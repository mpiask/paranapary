class WelcomeController < ApplicationController
    def index
    end
    def compose
        @baseherbs = Baseherb.all
    end
end
