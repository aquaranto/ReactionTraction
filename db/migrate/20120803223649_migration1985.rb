class Migration1985 < ActiveRecord::Migration
  def up
    add_column :tractions, :cost, :integer
  end

  def down
    remove_column :tractions, :name, :string
  end
end
