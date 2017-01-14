class CreateRoles < ActiveRecord::Migration[5.0]
  def change
    create_table :roles do |t|
      t.integer :component_id, null: false, default: 0
      t.integer :customer_id, null: false, default: 0
      t.integer :global_customer_id, null: false, default: 0
      t.datetime :end_date, null: false
      t.string :origin_system, null: false, default: ''

      t.timestamps
    end
  end
end
