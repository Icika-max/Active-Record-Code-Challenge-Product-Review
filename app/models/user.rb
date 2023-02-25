class User < ActiveRecord::Base
  #Add this line to define the 'name' attribute
  attribute :name, :string

    has_many :reviews
    has_many :products, through: :reviews
    has_many :reviewed_products, through: :reviews, source: :product
  end