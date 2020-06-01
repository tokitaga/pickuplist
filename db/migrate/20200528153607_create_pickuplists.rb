class CreatePickuplists < ActiveRecord::Migration[6.0]
  def change
    create_table :pickuplists do |t|
      t.string :vin
      t.date :date
      t.string :place
      t.integer :list_number
      t.integer :year
      t.string :maker
      t.string :grade
      t.string :model
      t.integer :cc
      t.integer :mileage
      t.string :color
      t.float :score
      t.integer :c_and_f
      t.integer :purchase
      t.string :country
      t.integer :result
      t.string :status
      t.timestamps
    end
  end
end
