class Tweet < ApplicationRecord
    
    validates :massage, presence: true #空ではないか
    validates :massage, length: { maximum: 140} #140文字以下
    
end
