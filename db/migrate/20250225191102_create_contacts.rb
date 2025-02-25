class CreateContacts < ActiveRecord::Migration[8.0]
  def change
    create_table :contacts do |t|
      t.references :customer, null: false, foreign_key: true
      t.string :name
      t.string :email
      t.string :phone
      t.string :position

      t.timestamps
    end
  end
end
