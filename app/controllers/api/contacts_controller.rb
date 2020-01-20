class Api::ContactsController < ApplicationController
  def index
    @contacts = Contact.all 
    render 'index.json.jb'
  end

  def create
    @contact = Contact.new(
                          id: params[:id],
                          firstname: params[:firstname],
                          lastname: params[:lastname],
                          email: params[:email],
                          phone_number: params[:phone_number]
                          )
    @contact.save
    render 'show.json.jb'
  end

  def show
    @contact = Contact.find(params[:id])
    render 'show.json.jb'
  end
  


end
