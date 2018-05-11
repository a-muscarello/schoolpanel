class LandingPageController < ApplicationController
    skip_before_action :authenticate_user!

    def index
        # @landing_page = LandingPage.all
        # redirect_to '/landing_page'
    end


end

# landing_page#index {:page=>"home"}