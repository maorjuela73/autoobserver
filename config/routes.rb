Rails.application.routes.draw do
  post 'student_token' => 'student_token#create'
  get 'students/current' => 'students#current'
  resources :students
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
