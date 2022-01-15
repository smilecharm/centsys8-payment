class CreateCodeCenters < ActiveRecord::Migration[6.1]
  def change
    create_table :code_centers do |t|
      t.string :name
      t.string :priority
      t.string :telno
      t.string :address
      t.json :ref, default: '{}'

      t.timestamps
    end
  end
end
