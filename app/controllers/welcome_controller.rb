class WelcomeController < ApplicationController
  def index

    @attendees = AttendeeLoader.load_all
  end
end
