class Establishment < ApplicationRecord
  has_many :menu_items, dependent: :destroy
  accepts_nested_attributes_for :menu_items,
    allow_destroy: true,
    reject_if: lambda { |attributes| attributes["name"].blank? || attributes["price"].blank? }
  has_and_belongs_to_many :users#, -> { where(users: {establishment: true}) }
  has_many :transactions, dependent: :destroy
  has_many :donates, dependent: :destroy
  has_many :claims, dependent: :destroy

  def balance
    Money.new(donates.sum(:amount_cents) - claims.sum(:amount_cents))
  end

  def coordinates
    [longitude, latitude]
  end

  def items_remained
    avg = Money.new(menu_items.average(:price_cents))
    avg == 0 || avg.nil? ? "Some" : (balance / avg).floor
  end
end
