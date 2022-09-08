module Meilisearch
  class Indexable
    include MeiliSearchable

    def add_to_index
      index.add_documents([self.to_indexed])
    end
  end
end
