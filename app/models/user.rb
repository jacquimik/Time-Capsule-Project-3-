# == Schema Information
#
# Table name: users
#
#  id                 :integer          not null, primary key
#  firstname          :string(255)
#  lastname           :string(255)
#  email              :string(255)
#  email_confirmation :string(255)
#  password_digest    :string(255)
#  created_at         :datetime
#  updated_at         :datetime
#

class User < ActiveRecord::Base
	has_many :children

	validates :email, confirmation: true
	validates :firstname, :lastname, :email, :password, :presence => true
	validates :password, length: { in: 6..20 }
	has_secure_password	

end
