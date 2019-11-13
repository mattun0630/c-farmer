class ReplysController < ApplicationController
  def create
    post = Post.find(params[:post_id])
    comment = current_producer.comments.build(comment_params)
    comment.post_id = post.id
    comment.save
    redirect_to post_path(post.id)
  end
  def destroy
    reply = Reply.find_by(post_id: params[:post_id], producer_id: current_producer.id)
    reply.destroy
    redirect_to posts_path
  end
    private
    def reply_params
      params.require(:reply).permit(:comment)
    end
end
