class ApplicationMailer < ActionMailer::Base
  default from: "ryu00630@gmail.com.com"   # 送信元アドレス
  default to: "mattun.runner-spirit@ezweb.ne.jp"     # 送信先アドレス
 
  def received_email(inquiry)
    @inquiry = inquiry
    mail(:subject => 'お問い合わせを承りました')
  end
end
