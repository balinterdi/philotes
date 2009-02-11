# This file is here so slice can be testing as a stand alone application.

Merb::Router.prepare do
  resources :blog_posts
  resources :blogs
  resources :comments
  resources :connections
  resources :events
  resources :forums
  resources :galleries
  resources :gallery_items
  resources :groups
  resources :invitations
  resources :memberships
  resources :messages
  resources :posts
  resources :profiles
  resources :statuses
  resources :users
 # ... 
end