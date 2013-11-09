class RenameHolds < ActiveRecord::Migration
  def change
    rename_table :hold_tables, :holds
  end
end
