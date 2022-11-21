class EventsController < ApplicationController
  before_action :set_event, only: [:show]

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def show
  end

  def create
    @event = Event.new(event_params)
    @event.save
    redirect_to events_path
  end

  private

  def event_params
    params.require(:event).permit(:title, :date, :location, :expenses)
  end

  def set_event
    @event = Event.find(params[:id])
  end
end
