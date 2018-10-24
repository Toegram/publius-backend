class Api::V1::UserNewsController < ApplicationController

  def index
    @usernews = UserNews.all
    render json: @usernews
  end


end
