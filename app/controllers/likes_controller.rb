class LikesController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @like = Like.new(post_id: @post.id, author_id: current_user.id)

    return unless @like.save

    redirect_to user_posts_path(@like.author_id, @like.post_id)
  end
end
