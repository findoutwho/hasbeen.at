class Subdomain
  def self.matches?(request)
    request.subdomain.present? && AttendeeLoader.exists?(request.subdomain)
  end
end
