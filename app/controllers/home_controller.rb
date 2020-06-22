class HomeController < ApplicationController
  def index
    @categories = Category.all

    cate = params[:cate]

    if !cate.nil?
      @blogs = Blog.where(:category_id => cate)
    else
    @blogs = Blog.all
    end


  end

  def show
  end

  def info
  end
end
