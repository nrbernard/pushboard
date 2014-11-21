class Subscriber < ActiveRecord::Base
  validates_presence_of :email
  validates_format_of :email, :with => /@/
  validates_presence_of :name
end