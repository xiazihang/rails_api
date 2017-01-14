class Contract < ApplicationRecord
  before_save :validate_contract_date
  has_many :components

  private
  def validate_contract_date
    return termination_date >= executed_date &&
        executed_date <= end_date &&
        end_date >= termination_date
  end
end
