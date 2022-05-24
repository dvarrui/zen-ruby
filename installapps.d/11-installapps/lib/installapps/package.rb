
require 'rainbow'
require_relative 'config'

##
# Package manager
class Package
  ##
  # Install packages
  def self.install(input)
    execute('zypper refresh')
    input.split(' ').each do |package|
      execute("zypper in -y #{package}", "Installing #{package}")
    end
  end

  private

  def self.execute(command, title=nil)
    title ||= command
    puts Rainbow("=======#{title}=======").bright
    if Config.debug?
      puts "[DEBUG] #{command}"
    else
      ok = system(command)
      puts Rainbow("[ERROR] \'#{command}\'").bright.red unless ok
    end
  end
end
