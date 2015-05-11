class Review < ActiveRecord::Base
  belongs_to :product
  belongs_to :user
  
  validates :rating, :user_id, :content, presence: true
  
  def short_content
    content[0..20] + "..."
  end
end
