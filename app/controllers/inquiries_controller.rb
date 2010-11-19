class InquiriesController < Spree::BaseController
  resource_controller
  
  def index
    #redirect_to(new_inquiry_url) unless params[:inquiry]
    build_object
    load_object
    render :action => :new
  end
 
  create do
    flash "Got it! We'll be back in touch shortly."
    wants.html { redirect_to :action => :index }
  end
  
end
