class StaticPagesController < ApplicationController

  def home
  	@student = Student.find_by(stu_email: current_user.email)
  end

  def requests
  	@student = Student.find_by(stu_email: current_user.email)
  	if @student.stu_rol == 1
  		@requests = Request.all.where('req_estado < ?', 5).
        paginate(:page => params[:page], :per_page => 15)
  	else
  		@requests = Request.request_by_student(@student.id)
  	end
  end

  def history
  	@student = Student.find_by(stu_email: current_user.email)
  	@requests = Request.all.where(req_estado: 5)
  		.paginate(:page => params[:page], :per_page => 15)
  end
  
end
