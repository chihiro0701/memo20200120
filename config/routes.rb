Rails.application.routes.draw do
  devise_for :users
    root to:"memos#top"
    # root to:"logins#login"
    # get "/memoall", to:"memos#top"
    get "/new", to:"memos#new"
    post "/create", to:"memos#create"
    delete "/memos/:id", to:"memos#destroy"
    get "/memos/:id/edit", to:"memos#edit"
    patch "/memos/:id", to:"memos#update"
    get "/categories/:id", to:"categories#category"
end

