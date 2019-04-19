class PostsController < ApplicationController
    # def index
    #     render :home        
    # end
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
    # def show
        
    # end
end
