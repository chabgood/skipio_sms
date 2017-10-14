class ContactsController < ApplicationController

  def index
    contact = Contact.new
    @all_contacts = contact.get_all_contacts
    respond_to do |format|
      format.js
    end
  end
end
