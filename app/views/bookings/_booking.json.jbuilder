json.extract! booking, :id, :renter_id, :listing_id, :stripe_charge_id, :created_at, :updated_at
json.url booking_url(booking, format: :json)
