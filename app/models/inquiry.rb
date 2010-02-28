class Inquiry < ActiveRecord::Base
  validates_presence_of :email
  validates_presence_of :message

  attr_accessible :name, :email, :message, :phone_number, :order_no, :inquiry_type
  
  after_save :deliver_notification_email

  def deliver_notification_email
    InquiryMailer.deliver_notification(self)
  end
  
end
