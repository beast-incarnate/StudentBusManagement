class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery 
  helper_method :current_student , :student_signed_in?

  def student_signed_in?
  	!session[:student_id].nil?
  end

  def current_student
  	if student_signed_in?
  		Student.find(session[:student_id])
  	end
  end


  def authenticate_student
  	unless student_signed_in?
  		return redirect_to '/signinstudent'
  	end
  end



end
