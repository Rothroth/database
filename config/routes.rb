Rails.application.routes.draw do
  root 'mains#index'

  #get 'main/new'

  #get 'main/edit'

  #get 'main/delete'

  #root ""
  match ':controller(/:action(/:id))', :via => [:get, :post]
end
