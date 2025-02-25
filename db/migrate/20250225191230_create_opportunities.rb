class CreateOpportunities < ActiveRecord::Migration[8.0]
  def change
    create_table :opportunities do |t|
      t.references :customer, null: false, foreign_key: true
      t.string :name
      t.string :description
      t.float :value
      t.date :creation_date
      t.integer :status

      t.timestamps
    end
  end
end
