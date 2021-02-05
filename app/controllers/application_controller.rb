class ApplicationController < ActionController::Base
    RakutenWebService.configure do |c|
      c.application_id = '1037887734178202344'
    end
end
