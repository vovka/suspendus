class EstablishmentsUser < ApplicationRecord
  belongs_to :establishment
  belongs_to :user
end
