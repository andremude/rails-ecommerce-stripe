# README - Athlete Ecommerce

## Tech Stack
   * Ruby '2.7.4'
   * Rails '6.1.7.2'
   * PostgreSQL '12.9'

## Setup

Clone repository: `git@github.com:andremude/rails-ecommerce-stripe.git`

<br>

Install dependencies: 

  `yarn install`
  `npm install`
 
<br>

Installed Gems: 

  ```
  gem "devise"
  gem "stripe"
  gem 'money-rails', '~> 1.7'
  gem 'simple_form'
  gem 'pagy'
  gem "dotenv-rails", groups: [:development, :test]
  gem "cloudinary"
  gem 'rspec-rails', groups: [:development, :test]
  gem 'factory_bot_rails', groups: [:development, :test]
  gem 'rails-controller-testing'
  gem 'dockerfile-rails', '~> 1.2', '>= 1.2.3'
  ```
<br>

Dependencies: 

```
"dependencies": {
  "@popperjs/core": "^2.11.7",
  "@rails/actioncable": "^6.0.0",
  "@rails/activestorage": "^6.0.0",
  "@rails/ujs": "^6.0.0",
  "@rails/webpacker": "5.4.4",
  "bootstrap": "^5.3.0-alpha2",
  "turbolinks": "^5.2.0",
  "webpack": "^4.46.0",
  "webpack-cli": "^3.3.12"
 }
```

<br>

Database management:

  `rails db:create`

  `rails db:migrate`

  `rails db:seed`

<br>  

## Set Credentials

  run `EDITOR=vim rails credentials:edit` 
  
  Set: 
  
    stripe:
      public: pk_test_XXXXXXX...
      secret: sk_test_XXXXXXX...
      webhook: whsec_XXXXXXX...
    
<br>

Run server

  `rails server`

<br>

## RSpec Testing
  
  In Gemfile add: 
  
```
  group :development, :test do
    gem 'rspec-rails', '~> 6.0.0'
    gem 'rails-controller-testing'
  end
```

 In terminal: 
  
  run `bundle exec rspec`

<br>

## Screenshots

![ecommerce-rails](https://github.com/andremude/rails-ecommerce-stripe/assets/71613801/13f3edaa-8a12-4131-a891-80b4eb5122e3)



