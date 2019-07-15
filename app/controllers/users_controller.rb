class UsersController < ApplicationController

	def create
	    @user = User.new(user_params)
	    if @user.save
	    
	      # @token = encode_token({ user_id: @user.id })
	      # render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
	      render json: { message: 'User created'}, status: :created
	    else
	      render json: { error: @user.error.full_messages }, status: :bad_request
	    end
	 end

	def index 
		@users = User.all
		render json: @users
	end

	def show
		@user = User.find(params[:id])
		render json: @user
	end

	private
		def user_params
		params.require(:user).permit(:first_name, :last_name, :email, :password, :bio, :photo_url, :program)
	end

end
