class Comment < ApplicationRecord
  belongs_to :publication
  belongs_to :user, optional: true
end
