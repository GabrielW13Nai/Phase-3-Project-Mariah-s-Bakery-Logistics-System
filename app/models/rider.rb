class Rider < ActiveRecord::Base
    has_many :orders
    has_many :teams, through: :orders
end