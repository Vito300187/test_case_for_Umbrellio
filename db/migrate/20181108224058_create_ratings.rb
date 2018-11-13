class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.integer :evaluation, null: false, index: true
      t.integer :post_id, null: false

      t.timestamps
    end
  end
end
