class BoardController < ApplicationController
  def index
    @board = Board.all
  end

  def new
  end

  def create
    Board.create(
      user: params[:user],
      title: params[:title],
      content: params[:content]
    )
    redirect_to '/'
  end

  def post
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
