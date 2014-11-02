class WelcomeController < ApplicationController
  def index

    @attendees = AttendeeLoader.new.load_all
  end
end
