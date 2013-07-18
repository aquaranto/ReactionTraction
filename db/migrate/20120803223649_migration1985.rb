class Migration1985 < ActiveRecord::Migration
  def up
    remove_column :cost
  end

  def down
    remove_column :tractions, :name, :string
  end
end
