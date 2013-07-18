class Migration1985 < ActiveRecord::Migration
  def change
    add_column :tractions, :cost, :integer
  end
end
