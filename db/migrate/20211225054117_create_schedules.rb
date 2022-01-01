class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.bigint :user_id
      t.string :name
      t.string :client
      t.string :date
      t.string :time
      t.json :ref

      t.timestamps
    end
  end
end
