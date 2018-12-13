class LangList < ApplicationRecord
  has_many :langs, dependent: :destroy
end
