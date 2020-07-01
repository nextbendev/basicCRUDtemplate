class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def index
    @categories = Category.all

    cate = params[:cate]

    if !cate.nil?
      @blogs = Blog.where(:category_id => cate)
    else
    @blogs = Blog.all
    end


  end
end
