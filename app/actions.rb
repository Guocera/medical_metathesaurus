# Homepage (Root path)
get '/' do
  erb :index
end

get '/search' do
  HTTParty.get("http://rest.biolabeler.com/api/v1/source").to_json

  body = {
    'keycode' => '6e62f3f0d3868a4745a1aeda7c3f19cb',
    'email' => 'njsyee@gmail.com',
    'query' => 'Parkinson tremor and movement disorders',
    'nconcepts' => '5',
    'sources' => 'Go,MSH',
    'types' => 'T201,T103,T114'
  }

  headers = {
   'content-type' => 'application/json',
   'accept' => 'application/json' 
  }

  HTTParty.post(
    "http://rest.biolabeler.com/api/v1/text2cui", {
      :body => body.to_json,
      :headers => headers
    }
  )

  # HTTParty.post("http://rest.biolabeler.com/api/v1/text2cui",
  #   body: { 
  #     keycode: '6e62f3f0d3868a4745a1aeda7c3f19cb'.to_json,
  #     email: 'njsyee@gmail.com'.to_json,
  #     query: 'Parkinson tremor and movement disorders',
  #     nconcepts: '5',
  #     sources: 'Go,MSH',
  #     types: 'T201,T103,T114'
  #   }.to_json
  # )
end