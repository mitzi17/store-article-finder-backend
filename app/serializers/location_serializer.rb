class LocationSerializer
  include FastJsonapi::ObjectSerializer
  
  has_many :articles
  
  attributes :area

end
