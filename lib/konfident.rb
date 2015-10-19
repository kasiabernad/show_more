require 'fileutils'

class Konfident
  def self.setup
    directory = `git rev-parse --show-toplevel`

    hooks_path = ".git/hooks/commit-msg"
    
    # system "touch #{directory}/.git/hooks/commit-msg"
    # system "chmod -x #{directory}/.git/hooks/commit-msg"

    pre_hook = File.open(self.template_file_path).read

    File.open(hooks_path, "w") {
    	|file| file.write(pre_hook)	
    }
    

    puts "#{pre_hook}"

    # puts "Copying file from #{temp_file} to #{directory}"

    # FileUtils.cp(temp_file, hooks_path)
  end

  def self.template_file_path
  	templates_root = File.expand_path(File.join('..', 'lib/templates'), File.dirname(__FILE__))
  	File.join(templates_root, 'nukomeet_template.sh')
  end
end