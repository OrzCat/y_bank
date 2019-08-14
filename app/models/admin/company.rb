class Admin::Company < ApplicationRecord
  has_many :jobs, :foreign_key => "admin_company_id"
  scope :enabled, -> { where( :enabled => true ) }
end
