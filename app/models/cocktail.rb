class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  validates :name, presence: true, uniqueness: true
end

# has_many :doses equivalent to

# def doses
#   Dose.where(cocktail_id: :self.id)
# end
