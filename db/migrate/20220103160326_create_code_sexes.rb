class CreateCodeSexes < ActiveRecord::Migration[6.1]
  def change
    create_table :code_sexes do |t|
      t.string :sex
      t.string :priority
      t.string :no
      t.string :content
      t.json :ref, default: '{}'

      t.timestamps
    end
  end
end
