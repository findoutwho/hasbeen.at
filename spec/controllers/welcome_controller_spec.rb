require 'rails_helper'

RSpec.describe WelcomeController, :type => :controller do

  describe "GET index" do
    it "returns http success" do
      visit 'http://www.hasbeenat.dev'
      expect(page.status_code).to eq 200
    end
  end
end
