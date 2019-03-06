class Country < ApplicationRecord
	mount_uploader :flag_pic, ImageUploader
end
