class Group < ApplicationRecord
  validates :name, presence: true

  has_many :group_users
  has_many :users, through: :group_users
  has_many :messages
  scope :desc, -> { order(created_at: :desc) }
  accepts_nested_attributes_for :users

  def last_message
    messages.last
  end
end
