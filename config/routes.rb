require 'subdomain'

Rails.application.routes.draw do
  constraints(Subdomain) do
    get '/' => 'attendees#show'
  end
  get 'welcome/index'
  root :to => 'welcome#index'
end
