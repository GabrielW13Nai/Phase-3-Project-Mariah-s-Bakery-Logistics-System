class Team < ActiveRecord::Base
    has_many :orders
    has_many :riders, through: :orders
end