class WelcomeController < ApplicationController
  def index

    @attendees = [
      Attendee.new(name: 'Franz', web: 'example.com'),
      Attendee.new(name: 'max_muetze', web: 'example.com'),
      Attendee.new(name: 'alice', web: 'example.com'),
      Attendee.new(name: 'bob', web: 'example.com')
    ]
  end
end
