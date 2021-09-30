class Order < ApplicationRecord
    belongs_to :category, optional: true
    validates :name, :presence => true
    validate :nameWordCountMoreThanOne
    validates :price, :presence => true
    validate :isSaleMoreThanPrice
    CURRENCY_TYPES = ["TL", "USD", "EUR"]

  def nameWordCountMoreThanOne
    errors[:widget] << "name should at least be two words" if name.split.size < 2
  end

  def isSaleMoreThanPrice
    unless sale.nil? || sale == 0
      errors[:comment] << "Sale can't be more than price" if price < sale
    end
  end
end
