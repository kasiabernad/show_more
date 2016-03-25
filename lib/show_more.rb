require 'show_more/railtie' if defined?(Rails)
require 'fileutils'
require 'rails/generators'
require 'show_more/engine'
require 'show_more/controller'
require 'show_more/controller_helpers'

module ShowMore

  def self.setup
    destination_path = "app/views/application/show_more.js"
    template_path = File.open(self.template_file_path).read

    File.open(destination_path, "w") {
      |file| file.write(template_path)
    }
  end

  def self.template_file_path
    templates_root = File.expand_path(File.join('..', 'lib/templates'), File.dirname(__FILE__))
    File.join(templates_root, 'show_more.js')
  end
end
