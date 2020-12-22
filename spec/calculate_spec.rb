require 'spec_helper'

describe AdderBot::Commands::Calculate do
  def app
    AdderBot::Bot.instance
  end
  it 'adds two numbers' do
    expect(message: 'math bot calculate 2+2', channel: 'channel').to respond_with_slack_message('4')
  end
  it 'adds two numbers via =' do
    expect(message: '= 2+2', channel: 'channel').to respond_with_slack_message('4')
  end
  it 'adds two numbers via = without a space' do
    expect(message: '=2+2', channel: 'channel').to respond_with_slack_message('4')
  end
  it 'sends something without an answer' do
    expect(message: 'math bot calculate pi', channel: 'channel').to respond_with_slack_message('Got nothing.')
  end
  it 'reports division by zero' do
    expect(message: 'math bot calculate 1/0', channel: 'channel').to respond_with_slack_message('Sorry, ZeroDivisionError.')
  end
end
