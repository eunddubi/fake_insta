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

  def show
    @post = Board.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
