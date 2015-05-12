class Review < ActiveRecord::Base
  belongs_to :product
  belongs_to :user
  
  validates :rating, :user_id, :content, presence: true
  
  def short_content
    max_len = 20
    if content.length > 20
      content[0..max_len-3] + "..."
    else
      content
    end
  end
end
