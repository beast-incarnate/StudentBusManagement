class AuthenticateController < ApplicationController
  


  def signinstudent_get
  end

  def signinadmin_get
  end

  def signinstudent
  
  	   username = params[:username]
       password = params[:password]

       student  =  Student.find_by_username(username)
       if student
          if password==student.password
            session[:student_id] = student.id
            puts student.id
            return redirect_to '/'
          end
       end

  end

  def signinadmin

  	username = params[:username]
  	password = params[:password]

  	if(username=="admin" && password=="admin")
  		return redirect_to '/admin'
  	end

  end

end
