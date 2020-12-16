class Instrument < ApplicationRecord
    has_many :sessions
    has_many :artists, through: :sessions
end
