class StaticPagesController < ApplicationController
  before_action :set_student, only: [ :home, :requests, :history ]

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

  def set_document
    @student = Student.new(
          :name => current_user.name,
          :lastname => current_user.lastname,
          :email => current_user.username + "@unal.edu.co",
          :rol => 2,
          :identification => Student.all.count + 1,
          :faculty => 'Ingenieria',
          :career => 'Ingeniera'
        )
  end

  private
    def set_student
      @student = Student.find_by(email: current_user.email)
      if @student.nil?
        redirect_to set_document_path
      end
    end

end
