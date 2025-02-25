class CreateOpportunityProducts < ActiveRecord::Migration[8.0]
  def change
    create_table :opportunity_products do |t|
      t.references :opportunity, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
