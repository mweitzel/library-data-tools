LibraryDataTools::Application.routes.draw do
  get '/materials', to: 'materials#list'
  get '/materials/:id', to: 'materials#show'
end
