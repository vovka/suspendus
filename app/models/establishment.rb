class Establishment < ApplicationRecord
  has_many :menu_items
  accepts_nested_attributes_for :menu_items,
    allow_destroy: true,
    reject_if: lambda { |attributes| attributes["name"].blank? || attributes["price_cents"].blank? }
  has_and_belongs_to_many :users#, -> { where(users: {establishment: true}) }
  has_many :transactions
  has_many :donates
  has_many :claims

  def balance
    donates.sum(:amount_cents) - claims.sum(:amount_cents)
  end
end
