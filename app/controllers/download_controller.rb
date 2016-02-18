class DownloadController < ApplicationController
  def index
  end
   def pdf
    send_file Rails.root.join('public', 'Union.pdf'), :type=>"application/pdf", :x_sendfile=>true
  end 
end
