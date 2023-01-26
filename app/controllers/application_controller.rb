class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/members" do
    member = Member.all
    member.to_json
  end

  get "/chapters" do
    chapter = Chapter.all.order(:name)
    # chapter_name = chapter.map do |chap|
    #   chap.name
    # end
    # chapter_name.to_json
    chapter.to_json
  end

  post "/addmember" do
    member = Member.create(
      name:params[:name],
      age:params[:age],
      gender: params[:gender],
      hometown:params[:hometown],
      chapter_id:params[:chapter_id]
    )
    member.to_json
  end

  patch '/members/:id' do
    member = Member.find(params[:id])
    member.update(
      name:params[:name],
      age:params[:age],
      hometown:params[:hometown],
      chapter_id:params[:chapter_id]
    )
    member.to_json
  end

  delete '/members/:id' do
    member = Member.find(params[:id])
    member.destroy
    member.to_json
  end

end
