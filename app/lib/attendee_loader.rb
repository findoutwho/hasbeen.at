class AttendeeLoader
  def load_all
    [
      Attendee.new(name: 'Franz', web: 'example.com'),
      Attendee.new(name: 'max_muetze', web: 'example.com'),
      Attendee.new(name: 'alice', web: 'example.com'),
      Attendee.new(name: 'bob', web: 'example.com')
    ]
  end
end
