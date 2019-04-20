class PostsController < ApplicationController
    def index
        @posts = Post.all
    end
    def new
        @post = Post.new
    end

    def create
        post_params = params.require(:post).permit(:title, :body)
        @post = Post.new post_params
        if @post.save
            redirect_to post_path(@post)
            # render text: "Post created successfully"
        else
            render :new
        end
    end
    def show
        @post = Post.find params[:id]
    end
    def edit
        @post = Post.find params[:id]        
    end
    def update
        post_params = params.require(:post).permit(:title, :body)
        post = Post.find params[:id]
        if @post.update post_params
            redirect_to post_path(@post)
        else
            render :edit
           # post.update post_params
            # redirect_to post_path(post)
        end
    end
    def destroy
        post = Post.find params[:id]
        post.destroy
        redirect_to posts_path
    end
end
