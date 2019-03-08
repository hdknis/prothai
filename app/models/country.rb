class Country < ApplicationRecord
	has_many :products
	mount_uploader :flag_pic, ImageUploader
end
