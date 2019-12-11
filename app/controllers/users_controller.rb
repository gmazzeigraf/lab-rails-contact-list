class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)

        if @user.save
            flash[:sucess] = 'Usuário cadastro com sucesso'
            redirect_to root_url
        else
            render 'new'
        end
    end

    private
        def user_params
            puts "params #{params.inspect}"
            params.require(:user).permit(:email, :name, :password, :password_confirmation)
        end
end
