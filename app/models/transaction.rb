class Transaction < ApplicationRecord
  belongs_to :user
  belongs_to :establishment
  validates :amount_cents, presence: true
  monetize :amount_cents, numericality: { greater_than_or_equal_to: 0 }
end
