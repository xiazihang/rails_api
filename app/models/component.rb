class Component < ApplicationRecord
  has_many :roles
  belongs_to :contract
end
