class Migration1985 < ActiveRecord::Migration
  def up
    add_column :name
      remove_column :cost
  end

  def down
    add_column :name
  end
end
