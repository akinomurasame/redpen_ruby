require "redpen_ruby/version"
require 'redpen_ruby/process'
require 'redpen_ruby/format_message'

module RedpenRuby
  def self.check(config, target, format: "plain")
    validation = Process.new
    validation.redpen_ruby(config, target, format)
  end
end
