class CreateProducts < ActiveRecord::Migration[5.1]
  def change

    create_table :blogs do |t|
      t.text :title
      t.text :
      t.text :size
      t.integer :price

      t.timestamps #создаёт created_at и updated_at
    end

  end
end
