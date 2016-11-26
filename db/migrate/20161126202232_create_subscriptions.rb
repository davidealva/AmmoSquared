class CreateSubscriptions < ActiveRecord::Migration[5.0]
  def change
    create_table :subscriptions do |t|
      t.string :caliber
      t.string :grade
      t.string :weight_range
      t.decimal :amount

      t.timestamps
    end
  end
end
