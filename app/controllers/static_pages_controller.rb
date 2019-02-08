class StaticPagesController < ApplicationController

	def about
	end

	def member
	end

	def member_recruit
	  @relation_products = Product.order('id ASC').limit(5)
	end
end
