Railsgoat::Application.routes.draw do

get "login" => "sessions#new"
get "signup" => "users#new"
get "logout" => "sessions#destroy"

resources :sessions do

end

resources :users do
  get "account_settings"
  
  resources :retirement do 
  end
  
  resources :paid_time_off do 
  end
  
  resources :work_info do
  end
  
  resources :performance do 
   
  end
  
  resources :benefit_forms do 
    
  end

  resources :messages do 
  end
  
end

get "download" => "benefit_forms#download"
post "upload" => "benefit_forms#upload"

resources :tutorials do
  collection do 
    get "credentials"
    get "injection"
    get "xss"
    get "broken_auth"
    get "insecure_dor"
    get "csrf"
    get "misconfig"
    get "crypto"
    get "url_access"
    get "ssl_tls"
    get "redirects"
    get "guard"
    get "info_disclosure"
    get "mass_assignment"
    get "constantize"
  end
end

resources :schedule do 
  collection do
    get "get_pto_schedule"
  end
  
end

resources :admin do
  get "dashboard"
  get "get_user"
  post "delete_user"
  put "update_user"
  get "get_all_users"
end

resources :dashboard do
  collection do 
    get "home"
  end
end


root :to => "sessions#new"

end
