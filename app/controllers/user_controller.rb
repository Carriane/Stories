class UserController < ApplicationController
    def new
        @user = User.new
    end
    
    def create
      @user = User.new(user_params)
      if @user.save
        WelcomeMailer.with(user: @user).welcome_email.deliver_now
        # deliver_now is provided by ActiveJob.
        session[:user_id] = @user.id
        redirect_to thanks_path notice: 'Successfully created account'
      else
        render :new
      end
    end
    
    def show
      @user = User.new(show_params)
    end

    def index 
      @users = User.all
    end 

    private

    def user_params
        # strong parameters
        params.require(:user).permit(:email, :password, :password_confirmation)
    end

    def show_params
      params.permit(:image_id)
    end
end
