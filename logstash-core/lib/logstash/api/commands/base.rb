module LogStash
  module Api
    module Commands
      class Base
        attr_reader :service
        
        def initialize(service = LogStash::Api::Service.instance)
          @service = service
        end

        def hostname
          service.agent.node_name
        end

        def uptime
          service.agent.uptime
        end

        def started_at
          (LogStash::Agent::STARTED_AT.to_f * 1000.0).to_i
        end
      end
    end
  end
end
