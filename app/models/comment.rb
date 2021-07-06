class Comment < ActiveRecord::Base
  belongs_to :article
  
  # we can include the visible concern here, and in comments
  include Visible
end
