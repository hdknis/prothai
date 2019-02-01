class BlogsController < ApplicationController
  def index
    # productsテーブルから最新順に作品を２０件取得する
    @blogs = Blog.order('id ASC').limit(30)
  end
end
