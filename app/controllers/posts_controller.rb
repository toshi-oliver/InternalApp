class PostsController < ApplicationController
  before_action :require_login, except: [:new, :create, :confirm_new]
  before_action :confirm_current_user, only: [:create, :confirm_new]

  def index
      @q = Post.ransack(params[:q])
      @posts = @q.result(distinct: true).page(params[:page]).recent
      @users = User.all.includes(:posts)
  end

  def show
      @post = Post.find(params[:id])

      respond_to do |format|
        format.html
        format.csv { send_data render_to_string, filename: "parking-#{Time.zone.now.strftime('%Y%m%d%S')}.csv" }
      end
  end

  def create

    if params[:back]
      render :new
    elsif @post.save
      PostMailer.creation_email(@post).deliver_now
      redirect_to new_post_path(@post), notice: "「#{@post.client_name}様」の査定申し込みを受け付けました。"
    else
      render :new
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

  def confirm_new

    redirect_to new_post_path(@post) unless @post.valid?
  end

  private

  def post_params
    params.require(:post).permit(:client_name, :email, :phone_number, :near_station, :parking_address, :parking_present, :contract_company, :year_period, :month_period, :midterm_cancellation, :cancellation_period, :cancellation_money, :rent, :tax_type, :land_estate, :parking_possible_number, :parking_size, :parking_size_unit, :start_date, :end_date, :desired_rent, :client_textarea, :user_textarea)
  end

  def require_login
    redirect_to new_post_path unless current_user
  end

  def confirm_current_user  #ハードコーディング、もっと簡単に書く方法ない？

    if current_user
      @post = current_user.posts.new(post_params)
    else
      @post = Post.new(post_params)
    end
  end

end