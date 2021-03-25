module Admin
  class ParticipantsController < AdminController
    before_action :set_event
    before_action :set_participant, only: %i[ show edit update destroy ]
    
    def index
      @participants = @event.participants
    end

    def new
      @participant = Participant.new
    end

    def show
    end

    def edit
    end

    def create
      @participant = Participant.new(participant_params)
      @participant.event = @event
      @participant.certificate = File.open(Rails.root.join("public","uploads","certificates","certificate_scaffold","#{@event.id}","certificate_scaffold.jpg"))
      @participant.code = "SET-" + SecureRandom.uuid.split("-")[0]
      if @participant.save
        redirect_to admin_event_participant_path(@event, @participant)
      else
        render :new
      end
    end

    def update
      if @participant.update(participant_params)
        redirect_to admin_event_participant_path(@event, @participant)
      else
        render :edit
      end
    end

    def destroy
      @participant.destroy
      redirect_to admin_event_participants_path(@event)
    end

    private
      def set_event
        @event = Event.find(params[:event_id])
      end

      def set_participant
        @participant = Participant.find(params[:id])
      end

      def participant_params
        params.require(:participant).permit(:fullname, :phone, :email)
      end
  end
end