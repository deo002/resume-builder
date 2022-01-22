class RegistrationsController < ApplicationController
    include SessionsHelper

    def new
        @user = User.new
    end
  
    def create
        @user = User.new(user_params)
        @user_result = @user.save
        @profile = Profile.new(:name => @user.name, :user_id => @user.id)
        @profile_result = @profile.save

        if @user_result && @profile_result
            log_in(@user)
            flash[:success] = 'Registered Successfully!'
            redirect_to(root_path) 
        else
            flash[:danger] = 'Registeration Unsuccessful!'
            render('new')
        end
    end

    private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
