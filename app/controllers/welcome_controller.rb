class WelcomeController < ApplicationController
  def index
    @attendees = [
      'Franz',
      'Max Muetze',
      'Alice',
      'Bob'
    ]
  end
end
