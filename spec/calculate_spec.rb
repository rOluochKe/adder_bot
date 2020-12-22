require 'spec_helper'

describe AdderBot::Commands::Calculate do
  def app
    AdderBot::Bot.instance
  end
  it 'adds two numbers' do
    expect(message: '2+2', channel: 'channel').to respond_with_slack_message('4')
  end
  it 'adds two numbers without a space' do
    expect(message: '2+2', channel: 'channel').to respond_with_slack_message('4')
  end
  it 'sends something without an answer' do
    expect(message: 'tre', channel: 'channel').to respond_with_slack_message("Sorry, I didn't understand that. I only add numbers in this format. eg: 5+6 or 6+3")
  end
end
