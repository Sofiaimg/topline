class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.text :address
      t.string :country
      t.string :phone

      t.timestamps
    end
  end
end
