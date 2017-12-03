class CreateOrders < ActiveRecord::Migration[5.1]
  def change

    create_table :orders do |t|
      t.decimal :num_order
      t.string :name_user
      t.decimal :phone
      t.string :address
      t.string :title
      t.decimal :price
      t.decimal :size

      t.timestamps #создаёт created_at и updated_at
    end

  end
end
