class Lang < ApplicationRecord
  belongs_to :user
  belongs_to :lang_list
end
