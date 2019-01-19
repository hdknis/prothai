class Product < ApplicationRecord
	def create_period
	 all_period = ["2～3週間","2ヶ月以上","3ヶ月以上","半年以上","約1年"]
	 return all_period
	end

	def create_country
     all_country = ["シンガポール","ベトナム","カンボジア","インドネシア","フィリピン","マレーシア","タイ","ミャンマー","イスラエル","インド","スリランカ","南アフリカ","中国","台湾","メキシコ","エストニア","オーストラリア","アメリカ"]
     return all_country
	end
end
