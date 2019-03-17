class StaticPagesController < ApplicationController

	def home
	  @products = Product.order('id ASC').limit(3)
	  @countries = Country.order('id ASC').limit(3)
	end

	def about
	end

	def member
	end

	def member_recruit
	  @relation_products = Product.order('id ASC').limit(5)
	  @Recruitment_content = "①インタビュー記事ライター

			海外で働く経営者の声を記事にまとめて、発信していただきます!

			②ビジネスサイドメンバー、WEBディレクター

			『MashUp』の運営方針を一緒に考え、今後の組織運営を担っていただきます! また、マネタイズに向けた動きも一緒に考えていただきたいです。"
      @application_method = '<a href="/inquirys">お問い合わせフォーム</a>から

			      お名前

			      Eメールアドレス

			      電話番号

			      の３点を記入の上、お問い合わせ内容に希望している職種の入力をお願いします。
			      追って、こちらから連絡をさせて頂きます。'
	end
end
