class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/members" do
    member = Member.all
    member.to_json
  end

  # get "/members/:hometown" do
  #   member = Member.all.filter do |member|
  #     member.hometown == params[:hometown]
  #   end
  #   member.to_json
  # end
  
  # get "/chapters" do
  #   chapter = Chapter.all.order(:name)
  #   # chapter_name = chapter.map do |chap|
  #   #   chap.name
  #   # end
  #   # chapter_name.to_json
  #   chapter.to_json
  # end

  # get "/chapters/:name" do 
  #   chapter_name = Chapter.all.filter do |chapter|
  #     chapter.name == params[:name]
  #   end
  #   chapter_name.to_json

    # member_chapter_name = Member.filter do |member|
    #   member.chapter.name == params[:name]
    # end
    # member_chapter_name.to_json

    # member_chapter_name = Member.all.filter do |member|
    #   member.chapter_id.name == params[:name]
    # end
    # chapter_name = Chapter.filter do |chapter|
    #   chapter.name == params[:name]
    #   .members
  
  # end

  get "/chapters" do
    chapter = Chapter.all
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
      gender:params[:gender],
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
