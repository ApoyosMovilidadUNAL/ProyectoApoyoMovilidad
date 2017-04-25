class ApplicationController < ActionController::Base
  rescue_from DeviseLdapAuthenticatable::LdapException do |exception|
    render :text => exception, :status => 500
  end
  protect_from_forgery with: :exception
  before_action :restrict_user_by_role
  before_action :authenticate_user!

  def restrict_user_by_role
  	if current_user
  		@student = Student.find_by(stu_email: current_user.email)
	  	if (request.path.include? '/admin' and @student.stu_rol != 1) or
	  		(request.path.include? '/student' and @student.stu_rol != 2)
	      redirect_to authenticated_root_path # change this to your 404 page if needed
	    end
  	end
  end

	
end
