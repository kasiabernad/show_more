module ShowMore
  class ApplicationController < ::ApplicationController
    def show_more
      @resources = Element.all
    end
  end
end