class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    skip_before_action :authenticate_user!, raise: false

    # layout false, only: :landing

    # before_action :authenticate_user!
end
