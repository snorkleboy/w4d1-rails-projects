class UsersController < ApplicationController
  def index
    query=params[:query] if params[:query]
    if (query)
      user=User.find_by(username: params[:query])
      render json: user
    else
      render json: User.all
    end
  end

  def create
    user = User.new(user_params)
 # replace the `user_attributes_here` with the actual attribute keys
 if (user.save)
   render json: user
 else
   render json: user.errors, status: :unprocessable_entity
 end
  end

 def show
   render json: User.find(params[:id])

 end
 def destroy
   User.delete(params[:id])
 end
 def update
   user=User.find(params[:id])
   user.update(user_params)
 end

 private
 def user_params
   params.require(:user).permit(:username)

 end
end
