class Comment < ActiveRecord::Base
  #association
  belongs_to :user
  belongs_to :prototype
end
