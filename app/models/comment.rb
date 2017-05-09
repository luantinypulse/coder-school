class Comment < ApplicationRecord
  has_many :comment, dependent: :destroy


  def self.search(search)
    where("title || body ILIKE ?", "%#{search}%")
  end
end
