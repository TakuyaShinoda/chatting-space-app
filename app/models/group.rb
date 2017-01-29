class Group < ApplicationRecord
  validates :name, presence: true

  has_many :users
  accepts_nested_attributes_for :users
end