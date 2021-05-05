class ArticleSerializer
  include FastJsonapi::ObjectSerializer
  
belongs_to :location

  attributes :name, :number, :price, :category, :size, :location_id

  attribute :location do |object|
    "#{object.location.area}"
  end
  
end
