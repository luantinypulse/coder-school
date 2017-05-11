class Comment < ApplicationRecord
    belongs_to :article
    belongs_to :user

  def self.search(search)
    where("title || body ILIKE ?", "%#{search}%")
  end
end
