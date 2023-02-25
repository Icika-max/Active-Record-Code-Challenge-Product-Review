class Review < ActiveRecord::Base
    belongs_to :user
    belongs_to :product

    validates :star_rating, presence: true
    validates :comment, presence: true

    def review
      user
    end

    def reviewed_product
      product
    end


  end