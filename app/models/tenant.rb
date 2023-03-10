class Tenant < ApplicationRecord
  has_many :leases
  has_many :apartments, through: :leases, dependent: :destroy

  validates :name, presence: true
  validates :age, numericality: { greater_than: 18 }
end
