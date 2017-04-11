class StaticPagesController < ApplicationController
  def home
  	@user_info = Student.find_by(stu_email: current_user.email)
  end
end
