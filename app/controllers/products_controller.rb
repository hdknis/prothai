class ProductsController < ApplicationController
  def index
    # productsテーブルから最新順に作品を２０件取得する
    @product = Product.new
    @products = Product.order('id ASC').limit(20)
    @periods = @product.create_period
    @countrys = @product.create_country
  end

  def show
    # productsテーブルから該当するidの作品情報を取得し@productの変数へ代入する処理を書いて下さい
    @product = Product.find(params[:id]) # 問題3ではこのコードは消して新しくコードを書いてください

    # @products = Product.find()
    @relation_products = Product.order('id ASC').limit(5)
    @periods = @product.create_period
    @connect_tags = @product.connect_tags
  end
end
