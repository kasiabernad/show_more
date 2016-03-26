module ShowMore
  module ViewHelpers
    def show_more_button(resources, limit, partial)
      resource_name = resources.first.class.name
      collection = resource_name.pluralize.downcase
      if resources.count > limit
        link_to 'Show More', show_more_path(
                              collection: collection,
                              partial: partial,
                              resource_name: resource_name),
                            remote: :true,
                            id: "#{partial}_show_more"
      end
    end
  end
end