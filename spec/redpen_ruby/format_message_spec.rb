require 'spec_helper'

module RedpenRuby
  describe RedpenRuby do
    it 'include "ValidationError" should be false' do
      message = FormatMessage.new("sampledoc-en.md:2: ValidationError[SentenceLength], 文長が最大値 \"215\" を超えています", "1.0.1")
      result = message.valid?
      expect(result).to be false
    end
    it 'does not include "ValidationError" should be true' do
      message = FormatMessage.new("aaa", "1.0.1")
      result = message.valid?
      expect(result).to be true
    end
    it 'does not include "ValidationError" should be true' do
      message = FormatMessage.new("aaa", "1.0.1")
      result = message.valid?
      expect(result).to be true
    end
    it 'message is correct' do
      message = FormatMessage.new('aaa', '1.0.1')
      expect(message.messages).to eq ['aaa']
    end
    it 'version is correct' do
      message = FormatMessage.new('aaa', '1.0.1')
      expect(message.version).to eq '1.0.1'
    end
  end
end
