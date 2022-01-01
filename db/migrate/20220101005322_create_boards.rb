class CreateBoards < ActiveRecord::Migration[6.1]
  def change
    create_table :boards do |t|
      t.string :title
      t.string :contents
      t.string :link
      t.json :ref

      t.timestamps
    end
  end
end
