class BlogsController < ApplicationController
  before_action :set_blog, only:[:show, :edit, :update, :destroy]
  def top
  end

  def index
    @blog = Blog.all
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    if params[:back]
      render :new
    else
      if @blog.save
        redirect_to new_blog_path, notice: "ブログを作成しました！"
      else
        render :new
      end
    end
  end

  def show
  end

  def edit
  end

  def update
    if @blog.update(blog_params)
      redirect_to blogs_path, notice: "ブログを編集しました！"
    else
      render :edit
    end
  end

  def destroy
    @blog.destroy
    redirect_to blogs_path, notice: "ブログを消去しました！"
  end
  def confirm
    @blog = Blog.new(blog_params)
    render :new if @blog.invalid?
  end

  private

  def blog_params
    params.require(:blog).permit(:content)
  end
end

def set_blog
  @blog = Blog.find(params[:id])
end
