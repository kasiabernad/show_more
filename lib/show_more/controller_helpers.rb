module ShowMore
  module ControllerHelpers
    extend ActiveSupport::Concern

    included do
      helper_method :collection_with_limit,
                    :show_more
      private(
        :collection_with_limit,
        :show_more
      )
    end

    def collection_with_limit limit, resources
      @resources = resources.take(limit)
    end

    def show_more
      partial = params[:partial]
      collection = params[:collection]
      @resources = collection.camelize.singularize.constantize.all
      render 'application/show_more.js', locales: {collection: params[:collection], partial: partial}
    end
  end
end


# user have to include ShowMoreHelper in Controller where we wants to implement show more funcionality
# Add method to action in which he wants to do this f.e. in show
# Need to run command 'show_more(resources, partial)' in console: it will create show_more method and route(on collection) for this method.

# User have to create partial and add div with id there. beyond partial user have to create show_more_button

# require 'fileutils'

# class Konfident
#   def self.setup
#     directory = `git rev-parse --show-toplevel`

#     hooks_path = ".git/hooks/commit-msg"
    
#     # system "touch #{directory}/.git/hooks/commit-msg"
#     # system "chmod -x #{directory}/.git/hooks/commit-msg"

#     pre_hook = File.open(self.template_file_path).read

#     File.open(hooks_path, "w") {
#       |file| file.write(pre_hook) 
#     }
    

#     puts "#{pre_hook}"

#     # puts "Copying file from #{temp_file} to #{directory}"

#     # FileUtils.cp(temp_file, hooks_path)
#   end

#   def self.template_file_path
#     templates_root = File.expand_path(File.join('..', 'lib/templates'), File.dirname(__FILE__))
#     File.join(templates_root, 'nukomeet_template.sh')
#   end