# GrapeScaffold

An API scaffold generator for Grape which generates controller, models and specs.

## Installation

Add this line to your Rails application's Gemfile:

    gem 'grape-scaffold'

And then execute:

    $ bundle

## Usage
### Scaffold
  The scaffold generator works similar to the Rails scaffold, it takes the model name and it's attributes as arguments.

    $ rails g grape:scaffold Model [Attributes]

#### Options
  * --skip-model-tests - Skip model tests
  * --skip-controller-tests - Skip controller tests
  * --controller-path=CONTROLLER_PATH - This can be used to set the path where the controller is generated. By default it's generated under `app/controllers/api/v1/`

### Controller
  The controller generator can be used to generate only the controller and controller specs.

    $ rails g grape:controller Model

#### Options
  * --skip-controller-tests - Skip controller tests
  * --controller-path=CONTROLLER_PATH - This can be used to set the path where the controller is generated. By default it's generated under `app/controllers/api/v1/`

### Contributors

* [Shrivara K S](https://github.com/shrivaraks)
* [Srikala Bharadwaj](https://github.com/SrikalaB)

### License

Available under the MIT License.
