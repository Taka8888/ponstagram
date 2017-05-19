class NoticeMailer < ApplicationMailer

   def sendmail_picture(picture)
     @picture = picture

     mail to: "puravida590@gmail.com",
          subject: '【Ponstagram】ポストが投稿されました'
   end

   def sendmail_contact(contact)
   @contact = contact

   mail to: @contact.email,
       subject:'【Ponstagram】お問い合わせありがありました。'
   end
end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.sendmail_picture.subject
  #     def sendmail_picture(picture)
#   　　def sendmail_picture(picture)
#         @picture = picture
# 　　　　　　  mail to: "puravida590@gmail.com",
#                subject: '【Ponstagram】ポストが投稿されました'
#     end
#
#     def sendmail_contact(contact)
#         @contact = contact
#         mail to: @contact.email,
#         subject:'【Ponstagram】お問い合わせありがありました。'
#     end
