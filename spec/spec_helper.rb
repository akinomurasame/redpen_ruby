$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'redpen_ruby'
require 'coveralls'
Coveralls.wear!
require "codeclimate-test-reporter"
CodeClimate::TestReporter.start
