
When('I want to add a new pet {string}') do |pet_name|
    body = {
        "id": 10,
        "category": {
          "id": 0,
          "name": "Dog"
        },
        "name": "#{pet_name}",
        "photoUrls": [
          "string"
        ],
        "tags": [
             {
            "id": 0,
            "name": "FirstTag"
          }
        ],
        "status": "available"
      }
    
    @pet_name = pet_name
    @pets_response = Helpers.call_post "/pet",body.to_json
    puts @pets_response.read_body
end
  
Then('The request should be successful') do
    expect(@pets_response.code).to eq "200"
end
  
Then('The newly pet should have the desired name') do
    expect(JSON.parse(@pets_response.body)["name"]).to eq @pet_name
end