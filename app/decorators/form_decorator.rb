class FormDecorator < Draper::Decorator
  delegate :to_key, :persisted?
end
