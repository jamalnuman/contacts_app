class Contact < ApplicationRecord

   belongs_to :user

  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true
  #validates_format_of :email, with: 



  def full_name
    "#{firstname} #{lastname}" #has 'self' under the hood
  end

  def friendly_updated_at
    updated_at.strftime("%b %d %Y")#pass it in as a string 
  end
end
