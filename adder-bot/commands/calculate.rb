module AdderBot
  module Commands
    class Calculate < SlackRubyBot::Commands::Base
      operator '='
      command 'calculate'

      def self.call(client, data, match)
        result = Dentaku::Calculator.new.evaluate(match[:expression]) if match.names.include?('expression')
        result = result.to_s if result
        if result&.length&.positive?
          client.say(channel: data.channel, text: result)
        else
          client.say(channel: data.channel, text: "Sorry, I didn't understand that. I only add numbers in this format. eg: 5+6 or 6+3")
        end
      rescue StandardError => e
        client.say(channel: data.channel, text: "Sorry, #{e.message}.")
      end
    end
  end
end
