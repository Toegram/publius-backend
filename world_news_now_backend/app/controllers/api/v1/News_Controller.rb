class Api::V1::NewsController < ApplicationController
  skip_before_action :authorized, only: [:create, :index]

  def index
    @news = News.all
    render json: @news
  end

  def create
      @book = Book.new(book_params)
      if @book.save
        render json: @book
      else
        render json: {errors: "Article did not save"}
      end
    end



  private

    def news_params
      params.require(:news).permit(:author, :content, :description, :published_at, :source, :title, :url, :url_to_image)
    end

end
