class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.column :name, :string
      t.column :description, :string
      t.column :price, :decimal, :precision => 8, :scale => 2
      t.column :material, :string
      t.column :care, :string
      t.column :color, :string
      t.column :weight, :string
      t.column :length, :string
      t.column :image, :string

      t.timestamps
    end
  end
end
