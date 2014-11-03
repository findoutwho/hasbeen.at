require 'rails_helper'

RSpec.describe AttendeesController, :type => :controller do

  describe "GET index" do
    it "returns http success" do
      visit 'http://www.hasbeenat.dev'
      expect(page.status_code).to eq 200
    end
  end

  describe 'GET franz.hasbeenat.dev' do
    before do
      attendee = Attendee.new(name: 'franz')
      allow(AttendeeLoader).to receive(:by_id).with('franz').and_return(attendee)
      visit 'http://franz.hasbeenat.dev'
    end

    it 'returns http success' do
      expect(page.status_code).to eq 200
    end
  end
end
