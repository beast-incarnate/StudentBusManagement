class AdminController < ApplicationController
  

  def index

  	@students = Student.all
    search = params[:search]

    if search
      @students.clear
      @otherstudents = Student.all
       @otherstudents.each do |student|
          if student.name.include? search
          @students << student
          end 
      end
    end
  end

  def addnewstudent

  	return redirect_to '/addstudent'

  end

  def addstudent 
  end

  def createnewstudent

  	studentname = params[:studentname]
  	studentId = params[:studentid]
  	studentcontact = params[:contact]
  	studentstoppage = params[:stoppage]

  	student = Student.find_by_studentId(studentId)

  	unless student  	
  	  if studentname != "" && studentId != "" && studentcontact != "" && studentstoppage !=""
  		Student.create(name: studentname , studentId: studentId , stoppage: studentstoppage , contact: studentcontact , fees: false)
  	  return redirect_to '/admin'
      end
    else
    end
else
end
end
