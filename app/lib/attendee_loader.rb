class AttendeeLoader
  def self.load_all
    all_files = Dir.glob(Rails.root.join('config', 'attendees', '*.yaml'))
    all_files.map do |file|
      hash = YAML.load_file(file)
      Attendee.new(hash)
    end
  end
end
