class Material < ActiveRecord::Base
  validates :bib_record, uniqueness: true

  def self.seed_materials_from_holds
    (Hold.where fulfillment_date: "\\N").each do |hold|
      holds_for_this_material = (Hold.where bib_record: hold.bib_record)

      material = Material.find_or_create_by(bib_record: hold.bib_record)
      material.update_attributes( material_code: hold.material_code,
                           number_of_open_holds: holds_for_this_material.count,
                                         copies: hold.copies )
    end
  end
end
