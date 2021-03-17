class Listing < ApplicationRecord
    belongs_to :neighborhood
    belongs_to :host, :class_name => "User"
    has_many :reservations
    has_many :reviews, through: :reservations

    def guests
        self.reservations.map{|res| res.guest}
    end
end
