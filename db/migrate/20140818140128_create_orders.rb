class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :type
      t.integer :quantity
      t.string :status
      t.references :user, index: true

      t.timestamps
    end
  end
end
