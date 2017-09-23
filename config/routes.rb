Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # 書き終えたら
  # $ rails routes
  # でどんなリクエスト一覧があるのか確認 
  resources :posts do # 追加したcontrollerを反映させる
    resources :comments, # postsとcommentsを結びつける
      only: [:create, :destroy] # このように書くことで、create,destroyのroutesだけ表示される
  end

  root 'posts#index'

end

