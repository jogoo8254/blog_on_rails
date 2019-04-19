class PostsController < ApplicationController
    def new
        @post = Post.new
    end

    def create
        post_params = params.require(post).permit(:title, :body)
        Post.create post_params
        if @post.save
            render text: "Post created successfully"
        else
            render :new
        end
    end
    def show
        @post = Post.find params[:id]
    end
    def index
        @posts = Post.all
    end
end
