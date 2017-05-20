class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @user_posts = @user.posts
    @responses = @user.responses.pluck(:post_id)
    @responser_posts = Post.where(id: @responses)
  end
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
end