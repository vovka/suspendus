class Transaction < ApplicationRecord
  belongs_to :user
  belongs_to :establishment
  validates :amount_cents, presence: true
end
