class Xclone < ApplicationRecord
  attribute :content, :string
  validates :content, length: {in: 1..140}
end
