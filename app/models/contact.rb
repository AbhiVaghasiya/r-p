class Contact < ApplicationRecord
  has_and_belongs_to_many :users
  has_many :reports, as: :reportable

  validates :contact, length: { minimum: 10 , maximum: 15 }, presence: true
end
