Rails.application.routes.draw do
  scope "(:locale)" do

   root "static_pages#home"
   get "/help", to:"static_pages#help"
   get "/about", to:"static_pages#about"
   get "/home", to:"static_pages#home"
   get "/contact", to:"static_pages#contact"
   get "/signup", to: "users#new"
  end

end
