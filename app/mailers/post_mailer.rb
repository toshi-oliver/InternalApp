class PostMailer < ApplicationMailer
  default from: "official@ontech.tokyo"

  def creation_email(post)
    @post = post
    mail(
      subject: "フォーム送信完了メール",
      to: post.email,
      bcc: "official@ontech.tokyo"
    )
  end
end
