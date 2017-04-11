class StaticPagesController < ApplicationController
  def home
  	@student = Student.find_by(stu_email: current_user.email)
  end
end
