class Client < ApplicationRecord
  has_many :memberships
  has_many :gyms, through: :memberships

  def total_memberships_cost
    memberships.pluck(:charge).sum
  end
end
