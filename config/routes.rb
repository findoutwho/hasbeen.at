require 'subdomain'

Rails.application.routes.draw do
  constraints(Subdomain) do
    get '/' => 'attendees#show'
  end
  get 'welcome/index'
  root :to => 'attendees#index'
end
