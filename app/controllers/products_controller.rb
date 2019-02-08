class ProductsController < ApplicationController
  before_action :create_info , only: [:index, :show]

  def create_info
    @product = Product.new
    @periods = @product.create_period
    @countrys = @product.create_country
  end

  def index
    @products = Product.order('id ASC').limit(20)
  end

  def show
    @product = Product.find(params[:id])
    @relation_products = Product.order('id ASC').limit(5)
    @connect_tags = @product.connect_tags
  end
end
