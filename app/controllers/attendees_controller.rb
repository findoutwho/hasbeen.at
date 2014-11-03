class AttendeesController < ApplicationController
  def index
    @attendees = AttendeeLoader.load_all
  end

  def show
    @id = request.subdomain
    @attendee = AttendeeLoader.by_id(@id)
  end
end
