module Twilio
  module Account
    include Twilio::Resource
    @attributes = {}.with_indifferent_access

    def attributes
      @attributes.empty? ? reload! : @attributes
    end

    def reload!
      handle_response get path
    end

    def friendly_name=(name)
      update_attributes :friendly_name => name
    end

    private
    def path
      "/Accounts/#{Twilio::ACCOUNT_SID}.json"
    end

    extend self
  end
end
