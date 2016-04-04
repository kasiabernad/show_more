module ShowMore
  module ViewHelpers
    def show_more_button(partial)
      collection = @class_name.class.name.pluralize.downcase
      new_path = request.original_fullpath.to_s + "?all=true"
      link_to 'Show More', url_for(new_path, {
                              all: true,
                              collection: collection,
                              partial: partial}),
                            remote: :true,
                            id: "#{partial}_show_more"
    end
  end
end