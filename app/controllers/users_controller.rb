class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save #IF USER WAS SAVED GO TO NEXT LINE
            flash[:notice] = "Welcome to the Alpha Blog #{@user.username}, you have successfully signed up"
            redirect_to articles_path
        else #ELSE RE-RENDER THE NEW USER FORM
            render 'new'
        end
    end

    private
    def user_params
        params.require(:user).permit(:username, :email, :password)
    end
end