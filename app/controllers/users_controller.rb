class UsersController < ApplicationController
    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find_by(password_digest: params[:password_digest])
        if user
            render json: user.to_json(default)
        else
            render json: { message: "User does not exist" }
        end
    end


    private

    def user_params
        params.require(:user).permit(:username)
    end

    def default
        {
            :include => {
                :characters => { 
                    :except => [:created_at, :updated_at]
                }
            }, :except => [:created_at, :updated_at]
        }        
    end
end
