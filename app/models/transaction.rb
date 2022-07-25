class Transaction < ApplicationRecord
  validates :title, presence: true, length: {minimum: 2}
  validates :value, presence: true
  validates :category, presence: true
  validates :date
  validates :description
end
