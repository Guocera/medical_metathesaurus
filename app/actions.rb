# Homepage (Root path)
get '/' do
  erb :index
end

get '/search' do
  HTTParty.get("http://rest.biolabeler.com/api/v1/source")

  # HTTParty.post("http://rest.biolabeler.com/api/v1/text2cui",
  #   query: { 
  #     keycode: '6e62f3f0d3868a4745a1aeda7c3f19cb',
  #     email: 'njsyee@gmail.com',
  #     query: 'Parkinson tremor and movement disorders',
  #     nconcepts: '5',
  #     sources: 'Go,MSH',
  #     types: 'T201,T103,T114'
  #   },
  #   headers: {
  #     'Content-Type': 'application/json',
  #     'Accept': 'application/json'
  #   }
  # )
end