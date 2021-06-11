# KATA\_Testing\_API

## Framework structure

The below framework can be used for API automation, using Ruby and NET (a Ruby gem/library used for calling REST APIs)

### helpers

The helpers.rb is a class where you can add general methods used within different test cases (e.g. call get request, call post request)

### step\_definitions

In this folder you will store all the step definitions for the BDD scenarios created

### support

In the support folder you have the env.rb file in which project configurations are stored (e.g. required gems...)

### feature file

In this feature file you will add the BDD scenarios for the below requests

## Instructions

Create BDD scenarios and execute them successfully for the following situations:

* Using the Petstore swagger (https://petstore.swagger.io/#/), create the following tests in Postman:
** Create a pet and store the newly created pet’s id
** Using scenario outline create multiple pets with different names and id's
** Use the id to get the pet
** Validate
** Check that the information (content, status, response time …) of the response is as expected
** Create a pet with category name “Dog” and do a test to validate that the category code is set as expected in the response
** Create a pet with 2 different tags and validate that the “name” of the tags are both “strings”

In order to install all the necesary gems (ruby libraries) for this project you need to run the following commands in a terminal (which being located inside the project path):
`gem install bundler`
`bundle install`

The second command will install all the dependencies/gems defined in the Gemfile

You can run a scenario from the terminal/command line and being located in the project path with the following:

`cucumber -t "@add_pets"`
where `@add_pets` represents the tag you have added for you scenario

## Useful resources

* https://itsadeliverything.com/declarative-vs-imperative-gherkin-scenarios-for-cucumber
