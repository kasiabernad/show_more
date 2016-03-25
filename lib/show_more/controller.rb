require 'show_more/controller_helpers'

module ShowMore
  module Controller
    extend ActiveSupport::Concern
    include ShowMore::ControllerHelpers
  end
end