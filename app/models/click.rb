class Click < ActiveRecord::Base
  attr_accessible :click_type_id, :count, :country_id
  belongs_to :country
  belongs_to :click_type
end
