class CreateChannels < ActiveRecord::Migration[5.1]
  def change
    create_table :channels do |t|
      t.string :name, null: false
      t.references :server, foreign_key: true

      t.timestamps
    end
  end
end
