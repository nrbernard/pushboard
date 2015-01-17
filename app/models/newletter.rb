class Newsletter < ActiveRecord::Base
  has_many :events
end
