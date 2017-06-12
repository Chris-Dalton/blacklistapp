class Contact < ActiveRecord::Base
  validates :first_Name, presence: true
  validates :last_Name, presence: true
  validates :email, presence: true
  validates :comments, presence: true
end