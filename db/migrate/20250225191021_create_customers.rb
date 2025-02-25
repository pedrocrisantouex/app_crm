class CreateCustomers < ActiveRecord::Migration[8.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :address
      t.date :registration_date
      t.integer :status

      t.timestamps
    end
  end
end
