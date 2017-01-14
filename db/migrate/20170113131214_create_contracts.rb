class CreateContracts < ActiveRecord::Migration[5.0]
  def change
    create_table :contracts do |t|
      t.string :contract_type, null: false, default: ''
      t.datetime :executed_date, null: false, default: ''
      t.datetime :termination_date, null: false, default: ''
      t.datetime :end_date, null: false, default: ''

      t.timestamps
    end
  end
end
