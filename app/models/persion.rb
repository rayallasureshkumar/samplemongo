class Persion
  include Mongoid::Document
  field :name, type: String
  field :age, type: String
  field :address, type: String
end
