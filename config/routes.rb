Rails.application.routes.draw do
  
  root "parties#index"

  # Routes for the Party resource:
  # CREATE
  get "/parties/new", :controller => "parties", :action => "new"
  post "/create_party", :controller => "parties", :action => "create"

  # READ
  get "/parties", :controller => "parties", :action => "index"
  get "/parties/:id", :controller => "parties", :action => "show"

  # UPDATE
  get "/parties/:id/edit", :controller => "parties", :action => "edit"
  post "/update_party/:id", :controller => "parties", :action => "update"

  # DELETE
  get "/delete_party/:id", :controller => "parties", :action => "destroy"
  #------------------------------

  # Routes for the Order resource:
  # CREATE
  get "/orders/new", :controller => "orders", :action => "new"
  post "/create_order", :controller => "orders", :action => "create"

  # READ
  get "/orders", :controller => "orders", :action => "index"
  get "/orders/:id", :controller => "orders", :action => "show"

  # UPDATE
  get "/orders/:id/edit", :controller => "orders", :action => "edit"
  post "/update_order/:id", :controller => "orders", :action => "update"

  # DELETE
  get "/delete_order/:id", :controller => "orders", :action => "destroy"
  #------------------------------

  # Routes for the Meal_item resource:
  # CREATE
  get "/meal_items/new", :controller => "meal_items", :action => "new"
  post "/create_meal_item", :controller => "meal_items", :action => "create"

  # READ
  get "/meal_items", :controller => "meal_items", :action => "index"
  get "/meal_items/:id", :controller => "meal_items", :action => "show"

  # UPDATE
  get "/meal_items/:id/edit", :controller => "meal_items", :action => "edit"
  post "/update_meal_item/:id", :controller => "meal_items", :action => "update"

  # DELETE
  get "/delete_meal_item/:id", :controller => "meal_items", :action => "destroy"
  #------------------------------

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
