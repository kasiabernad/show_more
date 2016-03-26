module ShowMore
  module ShowMoreMethod
    def collection_without_limit
      @resources = Element.all
    end
  end
end