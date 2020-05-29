class BlogsController < ApplicationController
  def index
    @blogs = Blog.all.order('created_at DESC').page(params[:page]).per(1)
  end
  
  def show
    @blog = Blog.find(params[:id])
  end
  
  def new
    @blog = Blog.new
  end
  
  def create
    Blog.create(blog_params)
    redirect_to :root
  end
  
  def edit
    @blog = Blog.find(params[:id])
  end
  
  def update
    Blog.update(blog_params)
    redirect_to :root
  end
  
  private
  def blog_params
    params.require(:blog).permit(:text, :nickname, :rate, :title).merge(user_id: current_user.id)
  end
end