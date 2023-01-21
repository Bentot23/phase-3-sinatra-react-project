class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/members" do
    member = Member.all
    member.to_json
  end

end
