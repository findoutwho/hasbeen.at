class Subdomain
  def self.matches?(request)
    request.subdomain.present? && AttedeeLoader.exists?(request.subdomain)
  end
end
