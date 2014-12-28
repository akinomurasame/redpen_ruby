$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'redpen_ruby'
require 'coveralls'
require "codeclimate-test-reporter"
CodeClimate::TestReporter.start
Coveralls.wear!
