class CreateInteractions < ActiveRecord::Migration[8.0]
  def change
    create_table :interactions do |t|
      t.references :customer, null: false, foreign_key: true
      t.date :interaction_date
      t.integer :type
      t.text :description

      t.timestamps
    end
  end
end
