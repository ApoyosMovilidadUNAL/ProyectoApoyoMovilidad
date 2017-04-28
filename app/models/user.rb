class User < ApplicationRecord
  	# Include default devise modules. Others available are:
  	# :confirmable, :lockable, :timeoutable and :omniauthable
  	devise :ldap_authenticatable, :rememberable, :trackable, :validatable,
  	:authentication_keys => [:username]
  	after_create :save_student
  	after_update :save_student
   	#has_one :student
	#accepts_nested_attributes_for :student

	validates :username,:presence => true,:uniqueness => {
    		:case_sensitive => false
  	}

	def ldap_before_save
		self.email = Devise::LDAP::Adapter.get_ldap_param(self.username,"mail").first
		#self.name = Devise::LDAP::Adapter.get_ldap_param(self.username,"givenname").first
		#self.lastname = Devise::LDAP::Adapter.get_ldap_param(self.username,"sn").first
	end
	def save_student
		student =  Student.new(
		  :stu_name =>  username,
		  :stu_email =>  username + "@unal.edu.co",
		  :stu_rol => 2,
		  :stu_identification =>  300,
		  :stu_facultad =>  'ingenieria',
		  :stu_carrera => 'ingenieria de sistemas')
		student.save!
	end
end
