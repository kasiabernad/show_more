require 'show_more/view_helpers'
require 'show_more/show_more_method'
module ShowMore
  class Railtie < Rails::Railtie
    initializer "show_more.view_helpers" do
      ActionView::Base.send :include, ViewHelpers
    end
    initializer "show_more.show_more_method" do
      ActionController::Base.send :include, ShowMoreMethod
    end
  end
end