class PostMailer < ApplicationMailer
  default from: "official@ontech.tokyo",
           bcc: "official@ontech.tokyo"


  def creation_email(post)
    @post = post

    if @post.user_id.present?
      mail( to: @post.email, cc: @post.user.email, subject: "フォーム送信完了メール" )
    else
      mail( to: @post.email, bcc: "official@ontech.tokyo", subject: "フォーム送信完了メール" )
    end

  end
  
end
