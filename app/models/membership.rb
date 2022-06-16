class Membership < ApplicationRecord
  belongs_to :gym
  belongs_to :client

  validates :charge, presence: true
  validates :client_id, presence: true
  validates :gym_id, presence: true
  validate :client_one_membership_per_gym

  private 

  def client_one_membership_per_gym
    client = Client.find(client_id)
    if client.gyms.pluck(:id).include?(gym_id)
      errors.add(:client, "is already a member at this gym")   
    end
  end
end
