$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'redpen_ruby'
require 'coveralls'
require "codeclimate-test-reporter"

formatters = [SimpleCov::Formatter::HTMLFormatter]

formatters << Coveralls::SimpleCov::Formatter
formatters << CodeClimate::TestReporter::Formatter

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[*formatters]
