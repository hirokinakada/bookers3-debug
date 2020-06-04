class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable,:validatable




  validates :name, length: {maximum: 20, minimum: 2}
  validates :introduction, length:{ maximum: 50}

  attachment :profile_image, destroy: false
  has_many :books, dependent: :destroy
  has_many :favorites, dependent: :destroy

  has_many :book_comments,dependent: :destroy
end
