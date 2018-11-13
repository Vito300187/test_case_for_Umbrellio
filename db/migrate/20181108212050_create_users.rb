class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :login, unique: true, index: true, null: false

      t.timestamps
    end
  end
end
