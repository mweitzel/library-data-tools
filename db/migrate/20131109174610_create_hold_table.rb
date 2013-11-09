class CreateHoldTable < ActiveRecord::Migration
  def change
    create_table :hold_tables do |t|
      t.integer :bib_record
      t.string :user_hash
      t.string :request_date
      t.string :material_code
      t.string :fulfillment_date
      t.integer :copies
      t.string :branch_code
      t.string :cancel_status
    end
  end
end
