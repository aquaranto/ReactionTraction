class Migration1985 < ActiveRecord::Migration
  def up
    add_column :transactions, :name, :string
    remove_column :cost
  end

  def down
    remove_column :transactions, :name, :string
  end
end
