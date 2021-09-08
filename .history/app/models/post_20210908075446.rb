class Post < ApplicationRecord
  valdidates_presence_of :body

  after_create_commit { broadcast_prepend_to :post }
end
