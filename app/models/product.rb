class Product < ApplicationRecord
	has_many :tags, through: :connect_tags
    has_many :connect_tags

	def create_period
	 all_period = ["2～3週間","2ヶ月以上","3ヶ月以上","半年以上","約1年"]
	 return all_period
	end

	def create_country
     all_country = ["シンガポール","ベトナム","カンボジア","インドネシア","フィリピン","マレーシア","タイ","ミャンマー","イスラエル","インド","スリランカ","南アフリカ","中国","台湾","メキシコ","エストニア","オーストラリア","アメリカ"]
     return all_country
	end

	mount_uploader :slider_photo1, ImageUploader
	mount_uploader :slider_photo2, ImageUploader
	mount_uploader :slider_photo3, ImageUploader
	mount_uploader :slider_photo4, ImageUploader
	mount_uploader :slider_photo5, ImageUploader
	mount_uploader :slider_photo6, ImageUploader
	mount_uploader :slider_photo7, ImageUploader
end
