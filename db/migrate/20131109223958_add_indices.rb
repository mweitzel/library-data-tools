class AddIndices < ActiveRecord::Migration
  def change
    add_index :holds, :bib_record
    add_index :holds, :user_hash
    add_index :holds, :request_date
    add_index :holds, :material_code
    add_index :holds, :fulfillment_date
    add_index :holds, :copies
    add_index :holds, :branch_code
    add_index :holds, :cancel_status
  end
end
