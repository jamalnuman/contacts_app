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
  
  def update
    @contact = Contact.find(params[:id])

    @contact.firstname = params[:firstname] || @contact.firstname
    @contact.lastname = params[:lastname] || @contact.lastname
    @contact.email = params[:email] || @contact.email
    @contact.phone_number = params[:phone_number] || @contact.phone_number

    @contact.save
    render "show.json.jb"
  end

    def destroy
      contact = Contact.find(params[:id])
      contact.destroy
      render json: {message: "Contact #{contact.id} has successfully been removed."}
    end 

end
