module RedpenRuby
  class Process
    def redpen_ruby(config, target)
      redpen_ruby_bin = File.expand_path(File.dirname(__FILE__) + '/../redpen-cli-1.0/bin/redpen')
      format_redpen_ruby_output(`#{redpen_ruby_bin} -c #{config} #{target} 2>&1`)
    end

    def format_redpen_ruby_output(message)
      FormatMessage.new(message)
    end
  end
end
