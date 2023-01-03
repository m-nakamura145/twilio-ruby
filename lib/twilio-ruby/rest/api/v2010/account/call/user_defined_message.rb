##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

module Twilio
  module REST
    class Api < Domain
      class V2010 < Version
        class AccountContext < InstanceContext
          class CallContext < InstanceContext
            class UserDefinedMessageList < ListResource
              ##
              # Initialize the UserDefinedMessageList
              # @param [Version] version Version that contains the resource
              # @param [String] account_sid The SID of the
              #   {Account}[https://www.twilio.com/docs/iam/api/account] that created User Defined
              #   Message.
              # @param [String] call_sid The SID of the
              #   {Call}[https://www.twilio.com/docs/voice/api/call-resource] the User Defined
              #   Message is associated with.
              # @return [UserDefinedMessageList] UserDefinedMessageList
              def initialize(version, account_sid: nil, call_sid: nil)
                super(version)

                # Path Solution
                @solution = {account_sid: account_sid, call_sid: call_sid}
                @uri = "/Accounts/#{@solution[:account_sid]}/Calls/#{@solution[:call_sid]}/UserDefinedMessages.json"
              end

              ##
              # Create the UserDefinedMessageInstance
              # @param [String] content The User Defined Message in the form of URL-encoded JSON
              #   string.
              # @param [String] idempotency_key A unique string value to identify API call. This
              #   should be a unique string value per API call and can be a randomly generated.
              # @return [UserDefinedMessageInstance] Created UserDefinedMessageInstance
              def create(content: nil, idempotency_key: :unset)
                data = Twilio::Values.of({'Content' => content, 'IdempotencyKey' => idempotency_key, })

                payload = @version.create('POST', @uri, data: data)

                UserDefinedMessageInstance.new(
                    @version,
                    payload,
                    account_sid: @solution[:account_sid],
                    call_sid: @solution[:call_sid],
                )
              end

              ##
              # Provide a user friendly representation
              def to_s
                '#<Twilio.Api.V2010.UserDefinedMessageList>'
              end
            end

            class UserDefinedMessagePage < Page
              ##
              # Initialize the UserDefinedMessagePage
              # @param [Version] version Version that contains the resource
              # @param [Response] response Response from the API
              # @param [Hash] solution Path solution for the resource
              # @return [UserDefinedMessagePage] UserDefinedMessagePage
              def initialize(version, response, solution)
                super(version, response)

                # Path Solution
                @solution = solution
              end

              ##
              # Build an instance of UserDefinedMessageInstance
              # @param [Hash] payload Payload response from the API
              # @return [UserDefinedMessageInstance] UserDefinedMessageInstance
              def get_instance(payload)
                UserDefinedMessageInstance.new(
                    @version,
                    payload,
                    account_sid: @solution[:account_sid],
                    call_sid: @solution[:call_sid],
                )
              end

              ##
              # Provide a user friendly representation
              def to_s
                '<Twilio.Api.V2010.UserDefinedMessagePage>'
              end
            end

            class UserDefinedMessageInstance < InstanceResource
              ##
              # Initialize the UserDefinedMessageInstance
              # @param [Version] version Version that contains the resource
              # @param [Hash] payload payload that contains response from Twilio
              # @param [String] account_sid The SID of the
              #   {Account}[https://www.twilio.com/docs/iam/api/account] that created User Defined
              #   Message.
              # @param [String] call_sid The SID of the
              #   {Call}[https://www.twilio.com/docs/voice/api/call-resource] the User Defined
              #   Message is associated with.
              # @return [UserDefinedMessageInstance] UserDefinedMessageInstance
              def initialize(version, payload, account_sid: nil, call_sid: nil)
                super(version)

                # Marshaled Properties
                @properties = {
                    'account_sid' => payload['account_sid'],
                    'call_sid' => payload['call_sid'],
                    'sid' => payload['sid'],
                    'date_created' => Twilio.deserialize_rfc2822(payload['date_created']),
                }
              end

              ##
              # @return [String] Account SID.
              def account_sid
                @properties['account_sid']
              end

              ##
              # @return [String] Call SID.
              def call_sid
                @properties['call_sid']
              end

              ##
              # @return [String] User Defined Message SID.
              def sid
                @properties['sid']
              end

              ##
              # @return [Time] The date this User Defined Message was created.
              def date_created
                @properties['date_created']
              end

              ##
              # Provide a user friendly representation
              def to_s
                "<Twilio.Api.V2010.UserDefinedMessageInstance>"
              end

              ##
              # Provide a detailed, user friendly representation
              def inspect
                "<Twilio.Api.V2010.UserDefinedMessageInstance>"
              end
            end
          end
        end
      end
    end
  end
end