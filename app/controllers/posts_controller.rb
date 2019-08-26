class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    @comment = @post.comments.build
    @users_array = @post.users.uniq
  end

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def update
    @post = Post.find_by_id(params[:post][:post_id])
  
    @post.comments.build(comment_params)
    if @post.update(post_params)
      redirect_to post_path(@post)
    else
      render :edit
    end
    
  end

  def create
    post = Post.create(post_params)
    redirect_to post
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, category_ids:[], categories_attributes: [:name])
  end

  # def comment_params
  #   params.require(:comment).permit(:content, :user_id, :comment_user_attributes_username)
  # end

end
