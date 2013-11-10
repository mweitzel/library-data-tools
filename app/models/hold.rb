class Hold < ActiveRecord::Base
  def self.current_open
    (Hold.where fulfillment_date: "\\N")
  end
end
