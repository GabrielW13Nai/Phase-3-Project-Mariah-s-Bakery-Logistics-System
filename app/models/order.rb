class Order < ActiveRecord::Base
    belongs_to :rider
    belongs_to :team
    
end