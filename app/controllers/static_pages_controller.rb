class StaticPagesController < ApplicationController
  def home
  	@user = Student.all.where(stu_email: current_user)
  end
end
