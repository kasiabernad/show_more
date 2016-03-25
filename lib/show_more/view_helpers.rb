module ShowMore
  module ViewHelpers
    def show_more_button(resources, limit, partial)
      collection = resources.first.class.name.pluralize.downcase
      if resources.count > limit
        link_to 'Show More', show_more_path(collection: collection, partial: partial), remote: :true, id: "#{partial}_show_more"
      end
    end
  end
end