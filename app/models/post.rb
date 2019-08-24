class Post < ApplicationRecord
  enum tax_type: [:税込, :税抜, :非課税]
  enum land_estate: [:更地, :アスファルト, :砂石]
  enum parking_size_unit: [:平米, :坪]
end
