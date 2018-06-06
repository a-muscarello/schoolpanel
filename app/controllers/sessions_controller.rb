# class SessionsController < ApplicationController
#   def new
#   end

#   def create
#     admin = Admin.find_by(email: params[:session][:email])
#     redirect_to homes_path
#   end

#   def destroy
#     sign_out
#     redirect_to root_url
#   end

#   def current_user
#     Admin.find_by(email: session[:admin_email])
#   end
# end 




#   # def create
#   #   admin = Admin.find_by(email: params[:session][:email].downcase)
#   #   if admin && admin.authenticate(params[:session][:password])
#   #     # Log the user in and redirect to the user's show page.
#   #   else
#   #     flash[:danger] = 'Invalid email/password combination' # Not quite right!
#   #     render 'new'
#   #   end
#   # end

#   # def destroy
#   #   reset_session
#   #   redirect_to root_path, :notice => "You successfully logged out"
#   # end


