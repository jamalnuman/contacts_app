class Api::ContactsController < ApplicationController
  def one_contact
    @contact = Contact.first #this is the model, not the controller 
    render "one_contacts_view.json.jb" #it is convention to name the render file as the name of the view 
  end

  def two_contacts
    @contact = Contact.second
    render "two_contacts.json.jb"
  end

  def all_contacts
    @contacts = Contact.all #important to note that this is designated as "all" and not "first" or "second"
    render "all_contacts.json.jb"
  end


end
