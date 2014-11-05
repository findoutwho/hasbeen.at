class AttendeesController < ApplicationController
  def index
    @attendees = AttendeeLoader.load_all
  end

  def show
    @id = request.subdomains.first
    @attendee = AttendeeLoader.by_id(@id)
    redirect_to root_url(subdomain: false) unless @attendee
  end
end
