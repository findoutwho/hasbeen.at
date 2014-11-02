class AttendeesController < ApplicationController
  def show
    @id = params[:id]
    @attendee = AttendeeLoader.by_id(@id)
  end
end
