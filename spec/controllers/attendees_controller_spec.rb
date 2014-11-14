require 'rails_helper'

RSpec.describe AttendeesController, :type => :controller, :type => :request do

  before do
    allow(AttendeeLoader).to receive(:base_path).and_return(Rails.root.join('spec','support','attendees'))
  end

  describe "GET index" do
    before do
      visit 'http://www.hasbeenat.dev'
    end
    it "returns http success" do
      expect(page.status_code).to eq 200
    end

    it 'is the homepage' do
      expect(current_url).to eq 'http://www.hasbeenat.dev/'
    end

    ['neinasaservice', 'Max Muetze', 'Unterstrich_'].each do |attendee|
      it "has attendee #{attendee}" do
        expect(page).to have_content "- #{attendee}"
      end
    end

    it 'has links to correct travellers' do
      click_link "Unterstrich_"

      expect(current_url).to eq "http://unterstrich.hasbeenat.dev/"
      expect(page.status_code).to eq 200
      expect(page).to have_content "Unterstrich_"
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

  describe 'GET unbekannt.hasbeenat.dev' do
    before do
      allow(AttendeeLoader).to receive(:by_id).with('unbekannt').and_return(nil)
      allow(AttendeeLoader).to receive(:load_all).and_return([])

      visit 'http://unbekannt.hasbeenat.dev'
    end

    it 'returns 200' do
      expect(page.status_code).to eq 200
    end

    it 'redirects to main page' do
      expect(current_url).to eq 'http://hasbeenat.dev/'
    end
  end
end
