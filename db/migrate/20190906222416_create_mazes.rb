class CreateMazes < ActiveRecord::Migration[5.2]
  def change
    create_table :mazes do |t|
      t.integer :start
      t.integer :end
      t.string :path

      t.timestamps
    end
  end
end
