module Admin
  class MembersController < AdminController
    before_action :set_member, only: %i[ show edit update destroy ]

    def index
      @members = Member.all
    end

    def edit
    end

    def show
    end

    def new
      @member = Member.new
    end
    
    def create
      @member = Member.new(member_params)
      if @member.save
        redirect_to admin_member_path(@member)
      else
        render :new
      end
    end
    
    def update      
      if @member.update(member_params)
        redirect_to admin_member_path(@member)
      else
        render :edit
      end
    end

    def destroy
      @member.destroy
      redirect_to admin_members_path
    end

    private
      def set_member
        @member = Member.find(params[:id])
      end

      def member_params
        params.require(:member).permit(:fullname, :phone_number, :email, :from, :is_active)
      end
  end
end