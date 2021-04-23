class Post < ApplicationRecord

  validates :title, :content, presence: true
  
scope :free, -> { where(:premium => false)}
# Ex:- scope :active, -> {where(:active => true)}

  def to_s
    title
  end
  
  
end
