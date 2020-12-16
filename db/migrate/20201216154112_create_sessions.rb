class CreateSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :sessions do |t|
      t.integer :time
      t.integer :artist_id
      t.integer :instrument_id

      t.timestamps
    end
  end
end
