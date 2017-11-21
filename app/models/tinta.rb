class Tinta < ApplicationRecord
  belongs_to :malla

  has_many :formula_tintas , inverse_of: :tinta, dependent: :destroy
  accepts_nested_attributes_for :formula_tintas, :reject_if => lambda { |a| a[:cantidad].blank? }, allow_destroy: true
  
end
