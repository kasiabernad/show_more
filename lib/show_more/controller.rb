require 'show_more/controller_helpers'

module ShowMore
  module Controller
    extend ActiveSupport::Concern
    include ShowMore::ControllerHelpers

    def self.included(base)
      base.send(show_more)
    end
    def show_more
      @resources = ["1","2"]
    end
  end
end