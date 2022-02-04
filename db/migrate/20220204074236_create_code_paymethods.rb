class CreateCodePaymethods < ActiveRecord::Migration[6.1]
  def change
    create_table :code_paymethods do |t|
      t.string :name
      t.string :priority
      t.string :content
      t.string :memo
      t.json :ref

      t.timestamps
    end
  end
end
