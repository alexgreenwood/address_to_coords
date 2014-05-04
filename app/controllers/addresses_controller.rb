require 'open-uri'
require 'json'

class AddressesController < ApplicationController
  def fetch_coordinates
    @address = "the corner of Foster and Sheridan"
    @url_safe_address = URI.encode(@address)

    @latitude = parsed_data["results"][0]["geometry"]["location"]["lat"]
    @longitude = parsed_data["results"][0]["geometry"]["location"]["lng"]


    url = "http://maps.googleapis.com/maps/api/geocode/json?address=the+corner+of+foster+and+sheridan&sensor=false"
    raw_data = open(url).read
    parsed_data = JSON.parse(raw_data)


  end
end
