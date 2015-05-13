Rails.application.routes.draw do


  get '/pass_spca'     => 'pass_spca#index'

  get '/pass_spca/new' => 'pass_spca#new' # this needs to be above the show otherwise the router will send a new request to the show page (since that pattern will match).
  post '/pass_spca'    => 'pass_spca#create'

  get '/pass_spca/:id' => 'pass_spca#show' # this needs to be last (or at least below the /movies/new route)


end
