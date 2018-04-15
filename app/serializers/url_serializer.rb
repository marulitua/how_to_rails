require './lib/basex.rb'

class UrlSerializer < ActiveModel::Serializer
  attributes :short

  def short
    Basex.encode(object.id)
  end
end
