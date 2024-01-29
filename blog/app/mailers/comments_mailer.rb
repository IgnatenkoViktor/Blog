class CommentsMailer < ApplicationMailer
    def new_comment(comment)
      @comment = comment
  
      mail to: "blog-owner@example.org", subject: "New comment!" do |format|
        format.text { render plain: "Someone commented on your post!" }
      end
    end
  end
  