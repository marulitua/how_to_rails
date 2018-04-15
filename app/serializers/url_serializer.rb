require './lib/basex.rb'

class UrlSerializer < ActiveModel::Serializer
  attributes :short, :origin, :id

  def short
    Basex.encode(object.id)
  end
end
