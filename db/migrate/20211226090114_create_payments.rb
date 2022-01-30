class CreatePayments < ActiveRecord::Migration[6.1]
  def change
    create_table :payments do |t|
      t.string :client
      t.string :yearmonth
      t.string :payamount
      t.string :method
      t.string :date
      t.string :memo
      t.json :ref, default: '{}'

      t.timestamps
    end
  end
end
