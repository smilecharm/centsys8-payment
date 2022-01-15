class CreateCodePaykinds < ActiveRecord::Migration[6.1]
  def change
    create_table :code_paykinds do |t|
      t.string :paykind
      t.string :monthlysupport
      t.string :unitprice
      t.string :selfpay
      t.json :ref, default: '{}'

      t.timestamps
    end
  end
end
