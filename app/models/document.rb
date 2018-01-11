require 'elasticsearch/model'

class Document < ApplicationRecord
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks # 自動 import

  # Index Configuration
  mapping do
    indexes :title
    indexes :abstract
  end
end
