require "test_helper"

class UserMailerTest < ActionMailer::TestCase
  test "account_activation" do
    user = users(:michael)
    user.activation_token = User.new_token
    mail = UserMailer.account_activation(user)
    assert_equal "メールアドレス認証用メール", mail.subject
    assert_equal [user.email], mail.to
    assert_equal ["cbohwos.i@gmail.com"], mail.from
    assert_match user.name, mail.html_part.body.to_s
    assert_match user.activation_token, mail.html_part.body.to_s
    assert_match CGI.escape(user.email), mail.html_part.body.to_s
  end

  # test "password_reset" do
  #   mail = UserMailer.password_reset
  #   assert_equal "Password reset", mail.subject
  #   assert_equal ["to@example.org"], mail.to
  #   assert_equal ["from@example.com"], mail.from
  #   assert_match "Hi", mail.body.encoded
  # end

end
