class PostsController < ApplicationController
  before_action :require_login, except: [:new, :create]

  def index
      @q = Post.ransack(params[:q])
      @users = User.all
      @posts = @q.result(distinct: true).recent
  end

  def show
      @post = Post.find(params[:id])
  end

  def create
    if current_user
      @post = current_user.posts.new(post_params) #ハードコーディング、もっと簡単に書く方法ない？
    else
      @post = Post.new(post_params)
    end

    if @post.save
      redirect_to new_post_path(@post), notice: "「#{@post.client_name}様」の査定申し込みを受け付けました。"
    else
      redirect_to new_post_path(@post)
      #このパスに引数を設定してやらなと、post.saveがfalseでnewアクションが呼び出された時に、postインスタンスがない状態になるのでエラーが発生

    end
  end

  def new
    @post = Post.new
  end

  def edit
      @post = Post.find(params[:id])
  end

  def update
      @post = Post.find(params[:id])

      if @post.update(post_params)
        redirect_to post_path(@post), notice: "「査定No.#{@post.id}」のステータスを更新しました。"
      else
        render :edit
      end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path, notice: "「査定No.#{@post.id}」のステータスを削除しました。"
  end

  private

  def post_params
    params.require(:post).permit(:client_name, :email, :near_station, :parking_address, :parking_present, :year_period, :month_period, :midterm_cancellation, :cancellation_money, :rent, :tax_type, :land_estate, :parking_possible_number, :parking_size, :parking_size_unit, :start_date, :end_date, :desired_rent, :client_textarea, :user_textarea)
  end

  def require_login
    redirect_to new_post_path unless current_user
  end

end