require 'show_more/view_helpers'
module ShowMore
  class Railtie < Rails::Railtie
    initializer "show_more.view_helpers" do
      ActionView::Base.send :include, ViewHelpers
    end
  end
end