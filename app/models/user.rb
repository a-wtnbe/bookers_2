class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, uniqueness: true
  validates :name, length: { minimum: 2, maximum: 20 }
  # validates :introduction,
    # length: { minimum: 1, maximum: 50 }


  has_many :book, dependent: :destroy
 attachment :profile_image,destroy: false
end
