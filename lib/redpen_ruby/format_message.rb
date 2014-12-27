module RedpenRuby
  class FormatMessage
    attr_reader :error_status, :message_list, :redpen_version
    private :error_status, :message_list

    def initialize(raw_message, version)
      @message_list = raw_message.split(/\n/)
      @redpen_version = version
      @error_status = get_error_status

      remove_unneeded_messages
    end

    def valid?
      return true if error_status
      false
    end

    def messages
      message_list
    end

    def version
      redpen_version
    end

  private

    def get_error_status
      message_list.each do |msg|
        return false if msg.match(/ValidationError/)
      end
      true
    end

    def remove_unneeded_messages
      message_list.delete_if { |msg| msg.match(/\A[0-9]+:[0-9]+:[0-9]+\.[0-9]+ \[main\].*\Z/) }
    end
  end
end
