Rails.application.routes.draw do
  devise_for :users, controllers: { invitations: "users/invitations" }
  resources :establishments do
    devise_scope :user do
      resource :invitations, controller: "users/invitations"
    end
    resources :menu_items
    resources :donates
    resources :claims
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get "/", to: 'establishments#index', constraints: RoleRouteConstraint.new { |user| user.superadmin_role? }
  # get "/", to: 'establishments#my', constraints: RoleRouteConstraint.new { |user| user.establishment_role? }
  # constraints(RoleRouteConstraint.new { |user| user.superadmin_role? }) do
  #   root to: 'establishments#index'
  # end
  # constraints(RoleRouteConstraint.new { |user| user.establishment_role? }) do
  #   root to: 'establishments#my'
  # end
  # constraints(RoleRouteConstraint.new { |user| !user.establishment_role? && user.superadmin_role? }) do
  #   root to: "home#index"
  # end
  root to: "home#index"
end
