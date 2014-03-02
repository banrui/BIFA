FootballApp::Application.routes.draw do
  get "/world_ranking" => "users#index"
  get "/football_data" => "users#data"
  get "/users/country_master" => "users#country_master"
end
