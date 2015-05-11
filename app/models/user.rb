class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :reviews
  has_many :products
  
  validates_presence_of :firstname, :lastname
  
  def logged_in_for
    ((Time.now - self.current_sign_in_at) / 60).round(1)
  end
end
