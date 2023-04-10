class CreateRiders < ActiveRecord::Migration[6.1]
  def change
    create_table :riders do |t|
      t.string :name
      t.integer :id_no
      t.string :nationality
      t.integer :phone_number
      t.string :plate_number
    end
  end
end
