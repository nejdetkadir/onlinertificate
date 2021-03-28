module Admin
  class BlogsController < AdminController
    before_action :set_blog, only: %i[ show edit update destroy ]
    before_action :get_categories, only: %i[ edit new create ]

    def index
      @blogs = Blog.all
    end

    def new
      @blog = Blog.new
    end

    def create
      @blog = Blog.new(blog_params)
      if @blog.save
        redirect_to admin_blog_path(@blog)
      else
        render :new
      end
    end

    def update
      if @blog.update(blog_params)
        redirect_to admin_blog_path(@blog)
      else
        render :edit
      end
    end

    def destroy
      @blog.destroy
      redirect_to admin_blogs_path
    end

    def get_categories
      @categories = BlogCategory.all
    end

    private
      def set_blog
        @blog = Blog.find(params[:id])
      end

      def blog_params
        params.require(:blog).permit(:title, :body, :blog_category_id)
      end
  end
end