class CommentsController < ApplicationController
    before_action :set_post

    def create
        comment = @post.comments.create!(params.require(:comment).permit(:content))
        CommentsMailer.new_comment(comment).deliver_later
        redirect_to @post
    end
  
    private
      def set_post
        @post = Post.find(params[:post_id])
      end
  end