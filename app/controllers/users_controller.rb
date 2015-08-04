class UsersController < ApplicationController
	def new
		@user=User.new
	end
	
	def create
		@user = User.new(user_params)
		
		if @user.save
			redirect_to @user
		else
			render 'new'
		end		
	end
	
	def show
		@user = User.find(params[:id])
		uid=@user.id
		@show_article=Article.where("userID"=>uid).find_all
	end
	
	def index
		@user=User.all
	end
	
	def edit
		@user = User.find(params[:id])
	end
	
	def update
  		@user = User.find(params[:id])
 
  		if @user.update(user_params)
    		redirect_to @user
  		else
    		render 'edit'
  		end
	end
	
	def destroy
		@user = User.find(params[:id])
		@user.destroy
		redirect_to users_path
	end	
	
	private
  		def user_params
    	params.require(:user).permit(:name, :email, :password)
  	end				
	
end
