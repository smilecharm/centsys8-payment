class CreateCodeServices < ActiveRecord::Migration[6.1]
  def change
    create_table :code_services do |t|
      t.string :name
      t.string :contents
      t.string :priority
      t.string :unitprice
      t.json :ref, default: '{}'

      t.timestamps
    end
  end
end
