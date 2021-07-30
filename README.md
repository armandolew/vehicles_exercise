# README

## Installation

1. rake db:create
2. rake db:prepare
3. rake db:seed

## Run

1. rails s

## Tests

1. bundle exec rspec

## Endpoints available

1. VehicleModel
  1. CREATE:
    ```
    curl --request POST \
    --url http://localhost:3000/api/v1/vehicle_models \
    --header 'content-type: application/json' \
    --data '{
	    "name": "Ibiza",
      "brand": "Seat"
    }'
    ```

2. Vehicles
  1. CREATE:
    ```
    curl --request POST \
    --url http://localhost:3000/api/v1/vehicles \
    --header 'content-type: application/json' \
    --data '{
      "model": "Ibiza",
      "year": "2020",
	    "mileage": 1000,
      "price": 100000
    }'
    ```
  2. INDEX:
    ```
    curl --request GET \
    --url 'http://localhost:3000/api/v1/vehicles?brand_name=Seat'
    ```
