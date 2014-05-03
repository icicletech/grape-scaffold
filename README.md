# GrapeScaffold

An API scaffold generator for Grape which generates controller, models and specs.

## Installation

Add this line to your Rails application's Gemfile:

    gem 'grape-scaffold'

And then execute:

    $ bundle

## Usage
### Scaffold
  The scaffold works similar to the Rails scaffold, you just pass in the name of the model along with it's attributes.

    $ rails g grape:scaffold Model [Attributes]

#### Options
  * --skip-model-tests - Skips model tests
  * --skip-controller-tests - Skip controller tests
  * --controller-path=CONTROLLER_PATH - This can be used to set the path were the controller is generated. By default it's generated under app/controllers/api/v1/

### Controller
  If only the controller and controller specs are required, this generator can be used.

    $ rails g grape:controller Model

#### Options
  * --skip-controller-tests - Skip controller tests
  * --controller-path=CONTROLLER_PATH - This can be used to set the path were the controller is generated. By default it's generated under app/controllers/api/v1/
