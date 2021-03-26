module Admin
  class FaqsController < AdminController
    before_action :set_faq, only: %i[ show edit update destroy ]

    def index
      @faqs = Faq.all
    end

    def new
      @faq = Faq.new
    end

    def show
    end

    def edit
    end

    def create
      @faq = Faq.new(faq_params)
      if @faq.save
        redirect_to admin_faq_path(@faq)
      else
        render :new
      end
    end

    def update
      if @faq.update(faq_params)
        redirect_to admin_faq_path(@faq)
      else
        render :edit
      end
    end

    def destroy
      @faq.destroy
      redirect_to admin_faqs_path
    end

    private
      def set_faq
        @faq = Faq.find(params[:id])
      end

      def faq_params
        params.require(:faq).permit(:ask, :answer)
      end
  end
end
