Rails.application.routes.draw do
  namespace :api do 
    get "/one_contact" => "contacts#one_contact"
    get "/two_contacts" => 'contacts#two_contacts'# the controller is plural and the model is singular with Capitalize
    get "/all_contacts" => "contacts#all_contacts"
  end
end
