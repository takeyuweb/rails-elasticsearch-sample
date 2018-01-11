# https://github.com/elastic/elasticsearch-rails/tree/master/elasticsearch-model#pagination
Kaminari::Hooks.init if defined?(Kaminari::Hooks)
Elasticsearch::Model::Response::Response.__send__ :include, Elasticsearch::Model::Response::Pagination::Kaminari
