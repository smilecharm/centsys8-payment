class CreatePlans < ActiveRecord::Migration[6.1]
  def change
    create_table :plans do |t|
      t.string :client
      t.string :service
      t.string :weekday
      t.time :time
      t.string :paykind
      t.integer :unitprice
      t.integer :support
      t.integer :selfprice
      t.string :exp
      t.json :ref

      t.timestamps
    end
  end
end
