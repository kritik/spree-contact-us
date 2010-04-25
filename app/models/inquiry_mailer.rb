class InquiryMailer < ActionMailer::Base
  def notification(inquiry)
    subject    "#{Spree::Config[:site_name]} Contact Us Form Received" rescue "Contact Us Form Received"
    body       :inquiry => inquiry
    recipients Spree::Config[:contact_form_to]  rescue ''
    bcc        Spree::Config[:contact_form_bcc] rescue ''
    from       inquiry.email
  end
end
