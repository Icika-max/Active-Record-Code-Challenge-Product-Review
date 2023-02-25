class Product < ActiveRecord::Base
# Add this line to define the 'name' attribute
  attribute :name, :string

    has_many :reviews
    has_many :users, through: :reviews
    has_many :reviewers, through: :reviews, source: :user
  end