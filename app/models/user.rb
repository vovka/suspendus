class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :establishments_user
  has_one :establishment, through: :establishments_user

  def role
    if superadmin_role?
      "Superadmin"
    elsif establishment_role?
      "Establishment"
    end
  end
end
