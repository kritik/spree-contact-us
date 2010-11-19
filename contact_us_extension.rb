# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application'

class ContactUsExtension < Spree::Extension
  version "1.0"
  description "Simple contact us form and admin tab for Spree"
  url "http://github.com/bryanmtl/spree_contact_us"

  # Please use contact_us/config/routes.rb instead for extension routes.

  # def self.require_gems(config)
  #   config.gem "gemname-goes-here", :version => '1.2.3'
  # end
  
  def activate

      AppConfiguration.class_eval do
          preference :contact_us_ask_for_order_number, :boolean, :default => true
          preference :contact_us_ask_for_phone, :boolean, :default => true
          preference :contact_us_inquiry_types, :string, :default => 'General Information,Order Status,Feedback,Feature Request,Problem With Site'
      end

    
    # make your helper avaliable in all views
    # Spree::BaseController.class_eval do
    #   helper YourHelper
    # end
  end
end
