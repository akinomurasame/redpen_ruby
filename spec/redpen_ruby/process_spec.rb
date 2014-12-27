require 'spec_helper'

module RedpenRuby
  describe Process do
    describe "#initialize" do
      it "should initialize correctly" do
        process = Process.new
        expect(process).to respond_to(:redpen_ruby)
        expect(process).to respond_to(:format_redpen_ruby_output)
      end
    end
  end
end
