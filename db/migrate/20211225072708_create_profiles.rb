class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.bigint :user_id
      t.string :username
      t.string :authority
      t.string :title
      t.string :role
      t.string :salarycondition
      t.json :ref

      t.timestamps
    end
  end
end
