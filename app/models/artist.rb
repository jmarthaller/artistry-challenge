class Artist < ApplicationRecord
    has_many :sessions
    has_many :instruments, through: :sessions

    validates :name, presence: true
    validates_uniqueness_of :title #{message: "gotta be unique"}
end
