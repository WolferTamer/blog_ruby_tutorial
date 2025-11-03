class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "email", "id", "name", "remember_created_at", "reset_password_sent_at", "updated_at", "views"]
  end

end
