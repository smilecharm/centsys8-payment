class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.bigint :user_id
      t.string :username
      t.string :authority, default: 'gu'
      t.string :title, default: '치료사'
      t.string :role
      t.string :salarycondition
      t.json :ref

      t.timestamps
    end
  end
end
