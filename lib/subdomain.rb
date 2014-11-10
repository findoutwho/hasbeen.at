class Subdomain
  def self.matches?(request)
    case request.subdomain
    when 'www', '', nil, #admin/api/etc could also go here
      false
    when AttendeeLoader.exists?(request.subdomain)
      true
    else
      true
    end
  end
end
