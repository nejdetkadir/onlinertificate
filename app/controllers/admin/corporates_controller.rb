module Admin
  class CorporatesController < AdminController
    before_action :set_corporate, only: %i[ show edit update destroy ]
    
    def index
      @corporates = Corporate.all
    end

    def new
      @corporate = Corporate.new
    end

    def show
    end

    def edit
    end

    def create
      @corporate = Corporate.new(corporate_params)
      if @corporate.save
        redirect_to admin_corporate_path(@corporate)
      else
        render :new
      end
    end

    def update
      if @corporate.update(corporate_params)
        redirect_to admin_corporate_path(@corporate)
      else
        render :edit
      end
    end

    def destroy
      @corporate.destroy
      redirect_to admin_corporates_path
    end
    

    private
      def corporate_params
        params.require(:corporate).permit(:title, :body)
      end

      def set_corporate
        @corporate = Corporate.find(params[:id])
      end
  end
end