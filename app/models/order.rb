class Order < ActiveRecord::Base
    belongs_to :riders
    belongs_to :teams
    
end