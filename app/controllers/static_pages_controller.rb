class StaticPagesController < ApplicationController

  before_action :set_student

  def home
  end

  def requests
  	if @student.rol == 1
  		@requests = Request.all.where('state < ?', 5).
        paginate(:page => params[:page], :per_page => 15)
  	else
  		@requests = Request.request_by_student(@student.id)
  	end
  end

  def professors_by_name
    @requests = Professor.request_by_professor_name(params[:nombre])
  end

  def history
  	@requests = Request.all.where(state: 5)
  		.paginate(:page => params[:page], :per_page => 15)
  end

  def set_student
    @student = Student.find_by(email: current_user.email)
  end

end
