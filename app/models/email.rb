class Email < ApplicationRecord
  has_and_belongs_to_many :users
  has_many :reports, as: :reportable

  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }, presence: true#, :uniqueness => true
end
