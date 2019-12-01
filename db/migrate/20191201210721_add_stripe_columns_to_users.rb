class AddStripeColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :payment, :boolean
    add_column :users, :stripe_id, :string
    add_column :users, :subscription_id, :string
    add_column :users, :purchase_date, :date
    add_column :users, :cancel_date, :date
  end
end
