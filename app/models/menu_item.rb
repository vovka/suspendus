class MenuItem < ApplicationRecord
  belongs_to :establishment
  monetize :price_cents, numericality: { greater_than_or_equal_to: 0 }

  def name_with_price
    "#{name} #{ActionController::Base.helpers.humanized_money_with_symbol(price)}"
  end
end
