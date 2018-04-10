class Quotation < ApplicationRecord
  belongs_to :season
  belongs_to :supplier
  belongs_to :handler
  belongs_to :seller
  belongs_to :client
  belongs_to :paymentterm
  has_many :quotationdetails
  has_many :orders
#  after_update :order_create, if: :status?
#  scope :status, -> { where[status: true] }


#def status?
#    self.status == true
#end

end
