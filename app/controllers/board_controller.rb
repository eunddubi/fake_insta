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
    @post = Board.find(params[:id])
  end

  def update
    Board.find(params[:id]).update(
      user: params[:user],
      title: params[:title],
      content: params[:content]
    )
    redirect_to '/'
  end

  def destroy
    Board.find(params[:id]).destroy()
    redirect_to '/'
  end
end
