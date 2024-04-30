class UserMailer < ApplicationMailer

  def account_activation(user)
    @user = user
    mail to: user.email, subject: "メールアドレス認証用メール"
  end

  def password_reset(user)
    @user = user
    mail to: user.email, subject: "パスワード再設定用メール"
  end
end
