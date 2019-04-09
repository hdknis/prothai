class CountriesController < ApplicationController
	def show
	  @country = Country.find(params[:id])
	  @countries = Country.order('id ASC').limit(20)
	  @connect_products = @country.products.where.not(slider_photo1: nil).limit(5)
    end
end
