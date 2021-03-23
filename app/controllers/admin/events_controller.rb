module Admin
  class EventsController < AdminController
    before_action :set_event, only: %i[ show edit update destroy ]

    def index
      @events = Event.all
    end

    def show
    end

    def new
      @event = Event.new
    end

    def create
      @event = Event.create(events_params)
      if @event.save
        redirect_to admin_event_path(@event)
      else
        render :new
      end
    end    

    def update
      if @event.update(events_params)
        redirect_to admin_event_path(@event)
      else
        render :edit
      end
    end

    def destroy
      @event.destroy
      redirect_to admin_events_path
    end

    private
      def set_event
        @event = Event.find(params[:id])
      end

      def events_params
        params.require(:event).permit(:name, :description, :cover, :event_date, :url)
      end
  end
end