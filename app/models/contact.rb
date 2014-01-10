class Contact < ActiveRecord::Base
  validates_presence_of :subject, :body, :phone_number, :email
end
