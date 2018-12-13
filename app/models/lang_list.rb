class LangList < ApplicationRecord
  has_many :lang, dependent: :destroy
end
