Rails.application.routes.draw do
 

  get 'admin/index'

  get 'student/index'

  get '/' => "student#index"

  get '/signinstudent' => "authenticate#signinstudent_get"

  get '/signinadmin' => "authenticate#signinadmin_get"

 
  post '/signinstudent' => "authenticate#signinstudent"
  post '/signinadmin' => "authenticate#signinadmin"

  get '/index' => "student#index"

  get '/admin' => "admin#index"

  post '/addnewstudent' => "admin#addnewstudent"

  get '/addstudent' => "admin#addstudent"

  post '/createnewstudent' => "admin#createnewstudent"

end
