class BoardController < ApplicationController
  #before_action은 하나의 액션을 실행하기 전에 먼저 실행해준다.
  #컨트롤러... filter라고 부름 컨트롤러 필터!
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @board = Board.all
  end

  def new
  end

  def create
    Board.create(post_params)
    redirect_to '/'
  end

  def show
  end

  def edit
  end

  def update
    @post.update(post_params)
    redirect_to "/board/show/#{@post.id}"
  end

  def destroy
    @post.destroy()
    redirect_to '/'
  end

# private위에는 public이라서 url로 요청하면 그것을 받아서 뷰를 보여준다.
  private
  #private는 해당 컨드롤러(BoardController)에서만 사용 가능함
  #객체에서 private 속성을 가지면 클래스 내부에서만 접근이 가능했었고,
  #이외의 상속받은 클래스나 객체 인스턴스에서도 접근이 불가능 했음.
  def set_post
    @post = Board.find(params[:id])
  end

  #strong parameter
  def post_params
    params.require(:post).permit(:user, :title, :content, :postimage)
  end
end
