Rails.application.routes.draw do
  devise_for :users
  root 'tweets#index'                      # ルートパスの設定
  get 'tweets'        => 'tweets#index'    # ツイート一覧画面
  get 'tweets/new'    => 'tweets#new'      # ツイート投稿画面
  post 'tweets'       => 'tweets#create'   # ツイート投稿機能
  delete 'tweets/:id' => 'tweets#destroy'  #ツイートの削除
  get 'users/:id'     => 'users#show'      # Mypageへのルーティング
end
