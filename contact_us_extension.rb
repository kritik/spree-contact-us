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

    
    # make your helper avaliable in all views
    # Spree::BaseController.class_eval do
    #   helper YourHelper
    # end
  end
end
