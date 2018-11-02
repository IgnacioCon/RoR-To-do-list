class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  has_one_attached :avatar
  validate :has_image_attached
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  def has_image_attached
    if !avatar.attached?
      errors.add(:avatar, "Please upload a picture!")
    end
  end
         
end
