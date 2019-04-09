class ProductsController < ApplicationController
  before_action :create_info , only: [:index, :show]

  def create_info
    @product = Product.order('id ASC').limit(20)
    @periods = Period.order('id ASC')
    @countrys = Country.order('id ASC')
  end

  def index
    @products = Product.order('id ASC').where.not(slider_photo1: nil,id: [72,82]).limit(20)
  end

  def show
    @product = Product.find(params[:id])
    @relation_products = Product.order('id ASC').limit(5)
    @countries = Country.order('id ASC').limit(20)
    @connect_tags = @product.connect_tags
  end
end
