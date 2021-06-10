class PostsController < ApplicationController
    def index
        @posts = Post.all.limit(10).includes(:photos)
        @post = Post.new
    end

    def create
        @post = current_user.posts.build(post_params)
        if @post.save
        if params[:images]
            params[:images].each do |img|
            @post.photos.create(image: params[:images][img])
            end
        end

        redirect_to posts_path
        flash[:notice] = "Success!"
        else
        flash[:alert] = "Something went wrong."
        redirect_to posts_path
        end
    end

end