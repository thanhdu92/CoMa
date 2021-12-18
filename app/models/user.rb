class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :lockable, :trackable

  belongs_to :department, optional: true
  has_many :assigments
  has_many :projects, through: :assigments
  has_one :profile

  accepts_nested_attributes_for :profile
end
