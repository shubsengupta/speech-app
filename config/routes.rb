SpeechApp::Application.routes.draw do

  root 'tests#index'
  match '/dashboard' => 'main#index', via: :get

  match 'api/user' => 'api/users#index', via: :get
  match 'api/user/create' => 'api/users#create', via: :post
  match 'api/user/sign-in' => 'api/users#sign_in', as: :sign_in, via: [:get, :post]
  match 'api/user/sign-out' => 'api/users#sign_out', as: :sign_out, via: [:get, :post]

  match '/api/presentation' => 'api/presentations#index', via: :get
  match '/api/presentation/show' => 'api/presentations#show', via: :get

  match 'api/presentation/create' => 'api/presentations#create', via: [:get, :post]

end
