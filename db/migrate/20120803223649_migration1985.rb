class Migration1985 < ActiveRecord::Migration
  def up
    add_column :name, :transactions, :string
    remove_column :cost
  end

  def down
    remove_column :name, :transactions, :string
  end
end
