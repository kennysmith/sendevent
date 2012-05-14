class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :plan_id

  # Setup accessible (or protected) attributes for your model
  attr_accessible :password_confirmation, :remember_me  # attr_accessible :title, :body
  attr_accessible :name, :email, :plan_id, :password

  belongs_to :plan

end
