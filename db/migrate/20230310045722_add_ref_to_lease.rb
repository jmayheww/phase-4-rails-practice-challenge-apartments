class AddRefToLease < ActiveRecord::Migration[6.1]
  def change
    add_reference :leases, :apartment, null: false, foreign_key: true
    add_reference :leases, :tenant, null: false, foreign_key: true
  end
end
