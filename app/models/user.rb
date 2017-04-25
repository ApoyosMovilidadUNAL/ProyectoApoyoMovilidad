class User < ApplicationRecord
  	# Include default devise modules. Others available are:
  	# :confirmable, :lockable, :timeoutable and :omniauthable
  	devise :ldap_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
   	#has_one :student
	#accepts_nested_attributes_for :student

	validates :username,:presence => true,:uniqueness => {
    		:case_sensitive => false
  	}

	def ldap_before_save
		self.email = Devise::LDAP::Adapter.get_ldap_param(self.username,"mail").first
		self.name = Devise::LDAP::Adapter.get_ldap_param(self.username,"givenname").first
		self.lastname = Devise::LDAP::Adapter.get_ldap_param(self.username,"sn").first
	end
end
