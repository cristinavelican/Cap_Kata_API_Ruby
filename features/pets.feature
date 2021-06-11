Feature: Pets APIs 

@add_pets
Scenario: Add a new pet to the store
When I want to add a new pet "MyPet"
Then The request should be successful
And The newly pet should have the desired name 