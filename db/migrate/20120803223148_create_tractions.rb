class CreateTractions < ActiveRecord::Migration
  def change
    create_table :tractions do |t|
      t.string :name
      t.float :value
      t.string :idea

      t.timestamps
    end
  end
end
