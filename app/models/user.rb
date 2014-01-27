class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
		 
  #attr_accessible :email, :username, :display_name, :password, :password_confirmation
		 
  has_many :analyses
  has_many :annotations
end
