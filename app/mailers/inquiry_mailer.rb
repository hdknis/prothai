class InquiryMailer < ActionMailer::Base
  default from: "info@mash-upkun.herokuapp.com"   # 送信元アドレス
  default to: "denhdk5231@gmail.com"     # 送信先アドレス

  def received_email(inquiry)
    @inquiry = inquiry
    mail(:subject => 'お問い合わせを承りました')
  end

end