class ApplicationController < ActionController::Base
  include Clearance::Controller
    protect_from_forgery with: :exception

    # skip_before_action :authenticate_user!, raise: false

    # layout false, only: :landing

    # before_action :require_login

    # def index
    #   current_user.articles
    # end

end

  
