class AttendeeLoader

  def self.base_path
    Rails.root.join('config', 'attendees')
  end

  def self.load_all
    all_files = Dir.glob(base_path.join('*.yaml'))
    all_files.map do |file|
      filename = File.basename(file, ".*")
      hash = YAML.load_file(file).merge(filename: filename)
      Attendee.new(hash)
    end
  end

  def self.exists?(id)
    File.exists?(base_path.join("#{id}.yaml"))
  end

  def self.by_id(id)
    return nil unless exists?(id)
    attendee_file = Dir.glob(base_path.join("#{id}.yaml"))
    Attendee.new(YAML.load_file(attendee_file.first).merge(filename:id))
  end
end
