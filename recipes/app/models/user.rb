class User < ApplicationRecord
    has_many :recipes
    has_many :allergens

    #validates: :name, presence: true, uniqueness: true 
end
