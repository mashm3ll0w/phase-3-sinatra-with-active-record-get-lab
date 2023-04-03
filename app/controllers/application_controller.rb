class ApplicationController < Sinatra::Base
  set :default_content_type, "application/json"

  # add routes
  get "/bakeries" do
    bakeries = Bakery.all
    bakeries.to_json
  end
end
