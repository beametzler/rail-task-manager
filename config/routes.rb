Rails.application.routes.draw do

  delete "tasks/:id",      to: "tasks#destroy", as: "delete"

  get "tasks", to: "tasks#index"

  get "tasks/new",  to: "tasks#new", as: "newForm"

  get "tasks/:id", to: "tasks#show", as: "task"

  post "tasks",     to: "tasks#create"

  get    "tasks/:id/edit", to: "tasks#edit", as: "edit"
  patch  "tasks/:id",      to: "tasks#update"


end


















  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get all your tasks.
  # GET '/tasks'

  # get a precise task, e.g GET '/tasks/3' get task with id=3
  # GET '/tasks/:id'

  # get the form to create a new task
  # GET '/tasks/new'

  # post a new task
  # POST '/tasks'

  # get the form to edit an existing task
  # GET '/tasks/:id/edit'

  # update an existing task
  # PATCH '/tasks/:id'

  # delete an existing task
  # DELETE '/tasks/:id'
