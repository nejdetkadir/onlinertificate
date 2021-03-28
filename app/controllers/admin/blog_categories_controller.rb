module Admin
  class BlogCategoriesController < AdminController
    before_action :set_category, only: %i[ edit update destroy ]

    def index
      @categories = BlogCategory.all
    end

    def new
      @category = BlogCategory.new
    end

    def edit
    end

    def create
      @category = BlogCategory.new(category_params)
      if @category.save
        redirect_to admin_blog_categories_path
      else
        render :new
      end
    end

    def update
      if @category.update(category_params)
        redirect_to admin_blog_categories_path
      else
        render :edit
      end
    end

    def destroy
      @category.destroy
      redirect_to admin_blog_categories_path
    end

    private
      def set_category
        @category = BlogCategory.find(params[:id])
      end

      def category_params
        params.require(:blog_category).permit(:name)
      end
  end  
end