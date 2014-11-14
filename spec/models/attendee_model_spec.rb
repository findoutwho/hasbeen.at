describe Attendee do
  subject(:attendee) { Attendee.new }

  it { should respond_to(:filename, :name, :web, :avatar, :twitter, :events) }

  describe '#twitter' do
    it 'defaults to empty string' do
      expect(attendee.twitter).to eq ''
    end
  end

  describe '#web' do
    it 'defaults to empty string' do
      expect(attendee.web).to eq ''
    end
  end

  describe '#avatar' do
    it 'defaults to placekitten' do
      expect(attendee.avatar).to eq 'http://placekitten.com/g/200/300'
    end
  end

  describe '#events' do
    it 'defaults to empty list' do
      expect(attendee.events).to eq []
    end
  end
end
