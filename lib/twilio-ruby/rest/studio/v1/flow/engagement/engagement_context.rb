##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
# 
# frozen_string_literal: true

module Twilio
  module REST
    class Studio < Domain
      class V1 < Version
        class FlowContext < InstanceContext
          class EngagementContext < InstanceContext
            ##
            # PLEASE NOTE that this class contains beta products that are subject to change. Use them with caution.
            class EngagementContextList < ListResource
              ##
              # Initialize the EngagementContextList
              # @param [Version] version Version that contains the resource
              # @param [String] flow_sid The flow_sid
              # @param [String] engagement_sid The engagement_sid
              # @return [EngagementContextList] EngagementContextList
              def initialize(version, flow_sid: nil, engagement_sid: nil)
                super(version)

                # Path Solution
                @solution = {flow_sid: flow_sid, engagement_sid: engagement_sid}
              end

              ##
              # Provide a user friendly representation
              def to_s
                '#<Twilio.Studio.V1.EngagementContextList>'
              end
            end

            ##
            # PLEASE NOTE that this class contains beta products that are subject to change. Use them with caution.
            class EngagementContextPage < Page
              ##
              # Initialize the EngagementContextPage
              # @param [Version] version Version that contains the resource
              # @param [Response] response Response from the API
              # @param [Hash] solution Path solution for the resource
              # @return [EngagementContextPage] EngagementContextPage
              def initialize(version, response, solution)
                super(version, response)

                # Path Solution
                @solution = solution
              end

              ##
              # Build an instance of EngagementContextInstance
              # @param [Hash] payload Payload response from the API
              # @return [EngagementContextInstance] EngagementContextInstance
              def get_instance(payload)
                EngagementContextInstance.new(
                    @version,
                    payload,
                    flow_sid: @solution[:flow_sid],
                    engagement_sid: @solution[:engagement_sid],
                )
              end

              ##
              # Provide a user friendly representation
              def to_s
                '<Twilio.Studio.V1.EngagementContextPage>'
              end
            end

            ##
            # PLEASE NOTE that this class contains beta products that are subject to change. Use them with caution.
            class EngagementContextContext < InstanceContext
              ##
              # Initialize the EngagementContextContext
              # @param [Version] version Version that contains the resource
              # @param [String] flow_sid The flow_sid
              # @param [String] engagement_sid The engagement_sid
              # @return [EngagementContextContext] EngagementContextContext
              def initialize(version, flow_sid, engagement_sid)
                super(version)

                # Path Solution
                @solution = {flow_sid: flow_sid, engagement_sid: engagement_sid, }
                @uri = "/Flows/#{@solution[:flow_sid]}/Engagements/#{@solution[:engagement_sid]}/Context"
              end

              ##
              # Fetch a EngagementContextInstance
              # @return [EngagementContextInstance] Fetched EngagementContextInstance
              def fetch
                params = Twilio::Values.of({})

                payload = @version.fetch(
                    'GET',
                    @uri,
                    params,
                )

                EngagementContextInstance.new(
                    @version,
                    payload,
                    flow_sid: @solution[:flow_sid],
                    engagement_sid: @solution[:engagement_sid],
                )
              end

              ##
              # Provide a user friendly representation
              def to_s
                context = @solution.map {|k, v| "#{k}: #{v}"}.join(',')
                "#<Twilio.Studio.V1.EngagementContextContext #{context}>"
              end
            end

            ##
            # PLEASE NOTE that this class contains beta products that are subject to change. Use them with caution.
            class EngagementContextInstance < InstanceResource
              ##
              # Initialize the EngagementContextInstance
              # @param [Version] version Version that contains the resource
              # @param [Hash] payload payload that contains response from Twilio
              # @param [String] flow_sid The flow_sid
              # @param [String] engagement_sid The engagement_sid
              # @return [EngagementContextInstance] EngagementContextInstance
              def initialize(version, payload, flow_sid: nil, engagement_sid: nil)
                super(version)

                # Marshaled Properties
                @properties = {
                    'account_sid' => payload['account_sid'],
                    'context' => payload['context'],
                    'engagement_sid' => payload['engagement_sid'],
                    'flow_sid' => payload['flow_sid'],
                    'url' => payload['url'],
                }

                # Context
                @instance_context = nil
                @params = {'flow_sid' => flow_sid, 'engagement_sid' => engagement_sid, }
              end

              ##
              # Generate an instance context for the instance, the context is capable of
              # performing various actions.  All instance actions are proxied to the context
              # @return [EngagementContextContext] EngagementContextContext for this EngagementContextInstance
              def context
                unless @instance_context
                  @instance_context = EngagementContextContext.new(
                      @version,
                      @params['flow_sid'],
                      @params['engagement_sid'],
                  )
                end
                @instance_context
              end

              ##
              # @return [String] The account_sid
              def account_sid
                @properties['account_sid']
              end

              ##
              # @return [Hash] The context
              def context
                @properties['context']
              end

              ##
              # @return [String] The engagement_sid
              def engagement_sid
                @properties['engagement_sid']
              end

              ##
              # @return [String] The flow_sid
              def flow_sid
                @properties['flow_sid']
              end

              ##
              # @return [String] The url
              def url
                @properties['url']
              end

              ##
              # Fetch a EngagementContextInstance
              # @return [EngagementContextInstance] Fetched EngagementContextInstance
              def fetch
                context.fetch
              end

              ##
              # Provide a user friendly representation
              def to_s
                values = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
                "<Twilio.Studio.V1.EngagementContextInstance #{values}>"
              end

              ##
              # Provide a detailed, user friendly representation
              def inspect
                values = @properties.map{|k, v| "#{k}: #{v}"}.join(" ")
                "<Twilio.Studio.V1.EngagementContextInstance #{values}>"
              end
            end
          end
        end
      end
    end
  end
end