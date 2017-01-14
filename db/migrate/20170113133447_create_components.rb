class CreateComponents < ActiveRecord::Migration[5.0]
  def change
    create_table :components do |t|
      t.integer :contract_id, null: false, default: 0
      t.string :component_type, null: false, default: ''
      t.datetime :begin_time, null: false
      t.datetime :end_time, null: false
      t.string :status, null: false, default: ''

      t.timestamps
    end
  end
end
