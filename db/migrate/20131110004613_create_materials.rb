class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.integer :bib_record
      t.string :material_code
      t.integer :copies
      t.integer :number_of_open_holds
    end
    add_index :materials, :bib_record
    add_index :materials, :material_code
    add_index :materials, :number_of_open_holds
    add_index :materials, :copies
  end
end
