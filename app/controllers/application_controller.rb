class ApplicationController < ActionController::Base
	layout 'review_site'
	before_action :ensure_domain
	protect_from_forgery with: :exception
	def after_sign_out_path_for(resource)
     rails_admin_path
    end

  #herokuapp.comから独自ドメインへリダイレクト
  FQDN = 'mash-up1221.com'
  # redirect correct server from herokuapp domain for SEO
  def ensure_domain
   return unless /\.herokuapp.com/ =~ request.host || /www.mash-up1221.com/ =~ request.host
   # 主にlocalテスト用の対策80と443以外でアクセスされた場合ポート番号をURLに含める
   port = ":#{request.port}" unless [80, 443].include?(request.port)
   redirect_to "#{request.protocol}#{FQDN}#{port}#{request.path}", status: :moved_permanently
  end
end
