class Order < ApplicationRecord
    belongs_to :category
    validates :name, :presence => true
    validate :nameWordCountMoreThanOne
    validates :price, :presence => true
    CURRENCY_TYPES = ["TL", "USD", "EUR"]

  def nameWordCountMoreThanOne
    errors[:widget] << "name should at least be two words" if name.split.size < 2
  end
end
