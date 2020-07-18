class UsersController < ApplicationController

    def home
       # @user = current_user

        @user = User.find_by(id: params[:id])
        @worlds = @user.worlds
    end

end
