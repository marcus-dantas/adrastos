class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :sub_discussion
end
