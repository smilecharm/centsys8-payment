class CreateCodeWeekdays < ActiveRecord::Migration[6.1]
  def change
    create_table :code_weekdays do |t|
      t.string :name
      t.string :priority
      t.string :content
      t.json :ref, default:'{}'

      t.timestamps
    end
  end
end
