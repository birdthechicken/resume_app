Rails.application.routes.draw do
 namespace :api do
  get '/students' => 'students#index'
  get '/students/:id' => 'students#show'
  patch '/students/:id' => 'students#update'


  get '/experiences' => 'experiences#index'
  post '/experiences' => 'experiences#create'
  get '/experiences/:id' => 'experiences#show' 
  patch '/experiences/:id' => 'experiences#update'
  delete '/experiences/:id' => 'experiences#destroy'


  get '/educations' => 'educations#index' 
  post '/educations' => 'educations#create'
  get '/educations/:id' => 'educations#show'
  patch '/educations/:id' => 'educations#update'
  delete '/educations/:id' => 'educations#destroy'



  get '/skills' => 'skills#index' 
  post '/skills' => 'skills#create'
  get '/skills/:id' => 'skills#show'
  patch '/skills/:id' => 'skills#update'
  delete '/skills/:id' => 'skills#destroy'


  get '/capstones' => 'capstones#index' 
  post '/capstones' => 'capstones#create'
  get '/capstones/:id' => 'capstones#show'
  patch '/capstones/:id' => 'capstones#update'
  delete '/capstones/:id' => 'capstones#destroy'

 end
end
