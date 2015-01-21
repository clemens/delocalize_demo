class ProductFormDecorator < FormDecorator
  decorates :product

  def available_on
    h.l(model.available_on) if model.available_on.present?
  end

  def available_until
    h.l(model.available_until) if model.available_until.present?
  end

  def price
    h.number_with_precision(model.price, precision: 2)
  end
end
