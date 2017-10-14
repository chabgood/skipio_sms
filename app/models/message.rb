class Message
  include HTTParty
  include ActiveModel::Model
  base_uri 'https://stage.skipio.com/api/v2'

  attr_accessor :message, :id, :query

  def initialize(id:, message:)
    @id = id
    @message = message
    @query = { query: { token: ENV["API_TOKEN"], :headers => { 'Content-Type' => 'application/json' } } }
  end

  def deliver
    set_message
    self.class.post('/messages', query)
  end

  private

  def set_message
    query[:body] = { message: { body: message }, recipients: ['contact-' + id] }
  end

end
