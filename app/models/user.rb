class User < ApplicationRecord
  has_many :posts
  has_one_attached :avatar
  validates :username, presence: :true, uniqueness: { case_sensitive: false }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
