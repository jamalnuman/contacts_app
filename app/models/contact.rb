class Contact < ApplicationRecord
  def full_name
    "#{firstname} #{lastname}" #has 'self' under the hood
  end

  def friendly_updated_at
    updated_at.strftime("%b %d, %Y")#pass it in as a string 
  end
end
