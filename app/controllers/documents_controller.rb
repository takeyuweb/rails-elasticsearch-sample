class DocumentsController < ApplicationController
  def index
    query = {
      query: {
        simple_query_string: {
          query: params[:keyword].to_s,
          fields: [:title, :abstract],
          default_operator: :and
        }
      }
    }
    @documents = Document.search(query)
  end
end
