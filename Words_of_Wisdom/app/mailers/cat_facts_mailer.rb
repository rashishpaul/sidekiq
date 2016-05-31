class CatfactsMailer < ApplicationMailer
  default from: 'nottherealbryanmytko@gmail.com'
  def catfacts_welcome(user)
    @user = user
    mail(to: @user, subject:"Welcome to Catfacts!")
  end
end
