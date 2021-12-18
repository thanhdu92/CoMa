class Project < ApplicationRecord
  has_many :assigments
  has_many :users, through: :assigments
end
