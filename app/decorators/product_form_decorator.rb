class ProductFormDecorator < FormDecorator
  decorates :product

  def released_on
    h.l(model.released_on) if model.released_on.present?
  end

  def available_until
    h.l(model.available_until) if model.available_until.present?
  end

  def price
    h.number_with_precision(model.price, precision: 2)
  end
end
