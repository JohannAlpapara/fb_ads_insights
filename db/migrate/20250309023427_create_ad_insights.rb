class CreateAdInsights < ActiveRecord::Migration[7.1]
  def change
    create_table :ad_insights do |t|
      t.string :ad_id
      t.string :ad_name
      t.integer :impressions
      t.integer :clicks
      t.integer :conversions
      t.decimal :cost_per_result
      t.decimal :frequency
      t.decimal :ad_spend

      t.timestamps
    end
  end
end
