Rails.application.routes.draw do
  get("/", { :controller => "places", :action => "index" })
  resources "entries"
  resources "places"
  resources "sessions"
  resources "users"
  resources "login"
end
