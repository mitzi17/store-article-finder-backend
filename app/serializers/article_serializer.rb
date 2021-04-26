class ArticleSerializer
  include FastJsonapi::ObjectSerializer
  
  attributes :name, :number, :price, :category, :size

  attribute :location do |object|
    "#{object.location.area}"
  end
  
end
