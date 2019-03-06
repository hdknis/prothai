class CountriesController < ApplicationController
	def show
	  @country = Country.find(params[:id])
	  @countries = Country.order('id ASC').limit(20)
    end
end
