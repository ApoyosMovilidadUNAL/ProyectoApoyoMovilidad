class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :ldap_authenticatable, :rememberable, :trackable, :validatable,
  :authentication_keys => [:username]
  after_create :save_student
  after_update :save_student
  validates :username,:presence => true,:uniqueness => {
    :case_sensitive => false
  }
  
  
  def ldap_before_save
     self.email = Devise::LDAP::Adapter.get_ldap_param(self.username,"mail").first
     self.name = Devise::LDAP::Adapter.get_ldap_param(self.username,"givenname").first
     self.lastname = Devise::LDAP::Adapter.get_ldap_param(self.username,"sn").first
  end

  def save_student
    s = Student.find_by(email: email)
    if s.nil?
      student = Student.new(
        :name => name,
        :lastname => lastname,
        :email => username + "@unal.edu.co",
        :rol => 2,
        :identification => Student.all.count + 1,
        :faculty => 'Ingenieria',
        :career => 'Ingeniera'
      )
      student.save!
    end
  end
  
end
