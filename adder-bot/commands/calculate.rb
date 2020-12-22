module AdderBot
  module Commands
    class Calculate < SlackRubyBot::Commands::Base
      chech_number = /^[0-9]*\+[0-9]*$/

      match chech_number do |client, data, _match|
        user_number = data.text
        number_array = user_number.split('+')

        result = 0
        number_array.each do |el|
          result += el.to_i
        end

        client.say(channel: data.channel, text: result.to_s)
      end

      alpa = //
      match alpa do |client, data, _match|
        client.say(channel: data.channel, text: "Sorry, I didn't understand that. I only add numbers in this format. eg: 5+6 or 6+3")
      end
    end
  end
end
