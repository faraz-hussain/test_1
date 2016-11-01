Rails.application.routes.draw do
  root :to => "names#index"
  # Routes for the Name resource:
  # CREATE
  get "/names/new", :controller => "names", :action => "new"
  post "/create_name", :controller => "names", :action => "create"

  # READ
  get "/names", :controller => "names", :action => "index"
  get "/names/:id", :controller => "names", :action => "show"

  # UPDATE
  get "/names/:id/edit", :controller => "names", :action => "edit"
  post "/update_name/:id", :controller => "names", :action => "update"

  # DELETE
  get "/delete_name/:id", :controller => "names", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
