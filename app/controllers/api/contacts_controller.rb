class Api::ContactsController < ApplicationController
 
  def index

    group = params[:group]

    if current_user
      @contacts = current_user.contacts
      render 'index.json.jb'
    elsif group
      group = Group.find_by(name: group)
      @contacs = group.contacts
      render 'index.json.jb'
    else
      render json: {} 
    end
  end

  def create
    @contact = Contact.new(
                          id: params[:id],
                          firstname: params[:firstname],
                          middlename: params[:middlename],
                          lastname: params[:lastname],
                          bio: params[:bio],
                          email: params[:email],
                          phone_number: params[:phone_number],
                          user_id: current_user.id
                          )
    if @contact.save
      render "show.json.jb"
    else
      render json: {errors: @contact.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @contact = Contact.find(params[:id])
    render 'show.json.jb'
  end
  
  def update
    @contact = Contact.find(params[:id])

    @contact.firstname = params[:firstname] || @contact.firstname
    @contact.lastname = params[:lastname] || @contact.lastname
    @contact.middlename = params[:middlename] || @contact.middlename
    @contact.bio = params[:bio] || @contact.bio
    @contact.email = params[:email] || @contact.email
    @contact.phone_number = params[:phone_number] || @contact.phone_number

    if @contact.save
      render "show.json.jb"
    else
      render json: {errors: @contact.errors.full_messages}, status: :unprocessable_entity
    end
  end

    def destroy
      contact = Contact.find(params[:id])
      contact.destroy
      render json: {message: "Contact #{contact.id} has successfully been removed."}
    end 

end
