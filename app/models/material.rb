class Material < ActiveRecord::Base

  def self.seed_materials_from_holds
    thing = []
    (Hold.where fulfillment_date: "\\N").each do |hold|
      thing << (Hold.where bib_record: hold.bib_record).count
    end
    p thing
  end
end
