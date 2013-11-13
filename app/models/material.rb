class Material < ActiveRecord::Base
  validates :bib_record, uniqueness: true

  def self.top_by(param = :number_of_open_holds, count = 30)
    Material.find(:all, :order => "number_of_open_holds desc", :limit => count)
  end

  def self.seed_materials_from_holds
    Hold.current_open.each do |hold|
      holds_for_this_material = (Hold.current_open.where bib_record: hold.bib_record)

      material = Material.find_or_create_by(bib_record: hold.bib_record)
      material.update_attributes( material_code: hold.material_code,
                           number_of_open_holds: holds_for_this_material.count,
                                         copies: hold.copies )
    end
  end
  def to_hash
    {bib_record:self.bib_record,current_holds:self.number_of_open_holds}
  end
end
