class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :zip_code

      t.timestamps null: false
    end
  end
end
