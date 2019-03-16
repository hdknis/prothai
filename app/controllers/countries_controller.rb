class CountriesController < ApplicationController
	def show
	  @country = Country.find(params[:id])
	  @countries = Country.order('id ASC').limit(20)
	  @connect_products = @country.products.order('id ASC').limit(3)
    end
end
