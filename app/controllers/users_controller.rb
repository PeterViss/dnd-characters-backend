class UsersController < ApplicationController
    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find_by(username: params[:username], password_digest: params[:password_digest]) 
            render json: user.to_json(default) 
    end
 
    def create        
        user = User.new(user_params)
        if user.valid?
            user.save!
            render json: user
        else 
            user.destroy
            render json: {message: "Please enter a unique Username!"}
        end  
    end
     
    private

    def user_params
        params.require(:user).permit(:username, :password_digest)
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
