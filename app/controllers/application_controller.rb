class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/members" do
    member = Member.all
    member.to_json
  end

  post "/addmember" do
    member = Member.create(
      name: params[:name],
      age: params[:age],
      hometown: params[:hometown],
      chapter_id: params[:chapter_id]
    )
    member.to_json
  end

  patch '/members/:id' do
    member = Member.find(params[:id])
    member.update(
      name:params[:name]
      age: params[:age],
      hometown: params[:hometown],
      chapter_id: params[:chapter_id]
    )
    member.to_json
  end

  delete '/members/:id' do
    member = Member.find(params[:id])
    member.destroy
    member.to_json
  end

end
