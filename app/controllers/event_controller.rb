class EventController < ApplicationController

  def index
      events = Event.all
      render json: events
  end

  def create
    event = Event.create(event_params)
  end

  def event_params
    params.require(:data).permit(:name, :location, :organizer, :url, :startTime, :endTime, :price, :category, :rsvp)
  end

end
