require 'subdomain'

Rails.application.routes.draw do
  get 'welcome/index'
  constraints(Subdomain) do
    get 'attendees/show'
  end
  root :to => 'welcome#index'
end
