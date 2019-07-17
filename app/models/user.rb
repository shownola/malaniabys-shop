class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :products
  has_many :comments, dependent: :destroy

  # validates :first_name, :last_name, presence: true

  # def full_name
  #   last_name + ", " + first_name
  # end

  # def full_name
  #   first_name.upcase + " " + last_name.upcase
  # end

  # def username
  #   last_name.upcase + ", " + first_name.upcase
  # end

  # def first_name
  #   self.name.split.first
  # end
  # def last_name
  #   self.name.split.last
  # end


end
