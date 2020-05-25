class BlogsController < ApplicationController
  def index
    @blogs = Blog.all.order('created_at DESC').page(params[:page]).per(3)
  end
  
  def show
    @blog = Blog.find(params[:id])
  end
  
  def new
    @user = User.find(params[:id])
    @blog = Blog.new
  end
  
  def create
    Blog.create(create_params)
    redirect_to :root
  end
  
  private
  def create_params
    params.require(:blog).permit(:text, :nickname, :rate, :title).merge(user_id: current_user.id)
  end
end
