class StaticPagesController < ApplicationController
  def home
  	@student = Student.find_by(stu_email: current_user.email)
  	if @student.stu_rol == 1
  		@requests = Request.all.paginate(:page => params[:page], :per_page => 15)
  	else
  		@requests = Request.request_by_student(@student.id)
  	end
  end
end
