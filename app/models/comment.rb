class Comment < ApplicationRecord
    belongs_to :article

  def self.search(search)
    where("title || body ILIKE ?", "%#{search}%")
  end
end
