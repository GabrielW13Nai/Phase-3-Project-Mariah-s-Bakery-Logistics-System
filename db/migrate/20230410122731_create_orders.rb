class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :name_of_order
      t.datetime :time_of_order
      t.integer :delivery_time_in_minutes
      t.integer :rider_id
      t.integer :team_id

    end
  end
end
