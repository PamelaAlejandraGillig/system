require 'meilisearch'

module Meilisearch
  class MeiliSearchable

    private

    def client
      config = YAML.load_file('config/meilisearch.yml')

      @client ||= MeiliSearch::Client.new(config['host'], config['key'])
    end

    def index
      @index ||= client.index(index_name)
    end

    def index_name
      if self.class.to_s == 'Class'
        self.name.downcase.pluralize
      else
        self.class.name.downcase.pluralize
      end
    end
  end
end

