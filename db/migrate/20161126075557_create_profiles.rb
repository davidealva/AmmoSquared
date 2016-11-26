class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :cust_number
      t.string :firstname
      t.string :lastname
      t.string :phone_number
      t.string :street1
      t.string :street2
      t.string :city
      t.string :state
      t.string :zip
      t.string :billing_street1
      t.string :billing_street2
      t.string :billing_city
      t.string :billing_state
      t.string :billing_zip
      t.decimal :account_credit
      t.date :last_shipment
      t.decimal :money_spent
      t.boolean :restricted
      t.string :shipping_zone
      t.decimal :lifetime_spent
      t.string :interval
      t.date :start_date

      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
