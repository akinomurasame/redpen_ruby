module RedpenRuby
  class Process
    def redpen_ruby(config, target, format)
      redpen_bin = File.expand_path(File.dirname(__FILE__) + '/../redpen-cli-1.1/bin/redpen')
      format_redpen_ruby_output(`#{redpen_bin} -c #{config} -f #{format} #{target} 2>&1`, `#{redpen_bin} -v`)
    end

    def format_redpen_ruby_output(message, version)
      FormatMessage.new(message, version)
    end
  end
end
