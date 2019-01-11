class BlogsController < ApplicationController
  def index
    # productsテーブルから最新順に作品を２０件取得する
    @blogs = Blog.order('id ASC').limit(30)
  end

  def show
    # productsテーブルから該当するidの作品情報を取得し@productの変数へ代入する処理を書いて下さい
    @blog = Blog.find(params[:id]) # 問題3ではこのコードは消して新しくコードを書いてください
  end

end
