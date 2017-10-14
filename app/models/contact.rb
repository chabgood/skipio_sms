class Contact
  include HTTParty
  base_uri 'https://stage.skipio.com/api/v2'
  require 'ostruct'

  attr_accessor :options

  def initialize
    @options = { query: { token: ENV["API_TOKEN"] } }
  end

  def get_all_contacts
    contacts = self.class.get('/contacts', @options).parsed_response["data"]
    create_objects(contacts)
  end

  private

  def create_objects(contacts)
    contact_objects = []
    contacts.each do |contact|
      contact_objects << OpenStruct.new(id: contact["id"], first_name: contact["first_name"],
                                        last_name: contact["last_name"], phone_mobile_international: contact["phone_mobile_international"])
    end
    contact_objects
  end
end
