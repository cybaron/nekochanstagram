class ContactsController < ApplicationController
  def index
    @contact = Contact.new
  end

end
