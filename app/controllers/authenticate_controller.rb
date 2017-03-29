class AuthenticateController < ApplicationController
  


  def signinstudent_get
  end

  def signinadmin_get
  end

  def signinstudent
  
  	return redirect_to '/signinadmin'

  end

  def signinadmin

  	username = params[:username]
  	password = params[:password]

  	if(username=="admin" && password=="admin")
  		return redirect_to '/admin'
  	end

  end

end
