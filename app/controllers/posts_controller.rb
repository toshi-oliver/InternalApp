class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
  end

  def create
    post = Post.new(post_params)
    post.save!
    redirect_to new_post_path, notice: "「#{post.client_name}様」の査定申し込みを受け付けました。"
  end

  def new
    @post = Post.new
  end

  def edit
  end

  def destroy
  end

  private

  def post_params
    params.require(:post).permit(:client_name, :email, :near_station, :parking_address, :parking_present, :year_period, :month_period, :midterm_cancellation, :cancellation_money, :rent, :tax_type, :land_estate, :parking_possible_number, :parking_size, :parking_size_unit, :start_date, :end_date, :desired_rent, :client_textarea)
  end
end
