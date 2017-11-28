class PersonSerializer < ActiveModel::Serializer
  attributes :id, :name, :connections, :partner, :children, :notes
end
