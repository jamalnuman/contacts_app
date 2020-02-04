class Api::ContactsController < ApplicationController
 
  def index
    if current_user
      group = params[:group]
      
        if group
          group = Group.find_by(name: group)#looking for the group that was passed into the param on line-5
          @contacts = group.contacts.where(user_id: current_user.id) #then assigning @contacts to the contacts that are associated to the group varaible on line 8
        else
          @contacts = current_user.contacts #this is why you only get the users assigned to the logged in user, instead of all the users 
        end
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
