require 'rails_helper'

describe 'Cars API', type: :request do
  it 'returns all cars' do
    create_cars
    get '/api/v1/cars'

    expect(response).to have_http_status(:success)
    expect(JSON.parse(response.body).size).to eq(15)
  end
end
