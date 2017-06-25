class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

	has_many :interns
	
	validates :email, presence: true,
	                      length: { minimum: 10 }
	validates :password, presence: true,
	                     length: { minimum: 6 }

	devise :database_authenticatable, :registerable,
	         :recoverable, :rememberable, :trackable, :validatable


end
