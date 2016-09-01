class NoticeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.sendmail_topic.subject
  #
  def sendmail_topic
    @topic = topic

    mail to: "youpy_yagi0311@yahoo.co.jp"
    	 subject: "タイムラインが更新されました"
  end
end
