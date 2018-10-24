class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create, :index]

  def index
    @users = User.all
    render json: @users
  end

  def create
      @user = User.create(user_params)
      if @user.valid?
        @token = encode_token(user_id: @user.id)
        render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
      else
        render json: { error: 'failed to create user' }, status: :not_acceptable
      end
    end

  def update
    @user = User.find(params[:id])
    if @user.save
      render json: @user, status: :accepted
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def profile
    render json: { user: UserSerializer.new(current_user) }, status: :accepted
  end

  def deletenews
    @usernews = UserNews.find_by(user_id: params[:user_id], news_id: params[:news_id])
    @usernews.destroy
    render json: {message: "Deleted Successfully!"}
  end


  private

    def user_params
      params.require(:user).permit(:name, :age, :country, :password)
    end

end
