class AttendeesController < ApplicationController
  def show
    @id = request.subdomain
    @attendee = AttendeeLoader.by_id(@id)
  end
end
