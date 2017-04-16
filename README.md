# README  (in progress..)

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# Reserve-a-car API

Reserve-a-car API serves data to Reserve-a-car, a car rental web app.

### Ruby version
Ruby 2.3.0

### Models
The data consist of the following models:
 - a user model
 - an account model
 - a vehicle model
 - a vehicleDescription model
 - a reservation model

### Classes

```rb
class User < ApplicationRecord

end

class Account < ApplicationRecord

end

class Reservation < ApplicationRecord

end

class Vehicle < ApplicationRecord

end

class VehicleDescription < ApplicationRecord

end
```

### Entity Relationship Diagrams (ERDs)
![ERD]('here goes path to image')

### Validations

### Dependencies

### API

### Routes
