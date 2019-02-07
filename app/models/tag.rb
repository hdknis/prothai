class Tag < ApplicationRecord
	has_many :connect_tags
	has_many :products, through: :connect_tags
    accepts_nested_attributes_for :connect_tags
end
