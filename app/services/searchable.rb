module Meilisearch
  class Searchable
    include MeiliSearchable

    def search(text)
      index.search(text)
    end
  end
end

