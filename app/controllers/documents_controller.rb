class DocumentsController < ApplicationController
  def index
    @keyword = params[:keyword].to_s
    query = {
      query: {
        simple_query_string: {
          query: @keyword,
          fields: [:title, :abstract],
          default_operator: :and
        }
      }
    }
    @documents = Document.search(query).page(params[:page]).records
  end
end
