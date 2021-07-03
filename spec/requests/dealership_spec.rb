require 'rails_helper'

describe 'Dealerships API', type: :request do
  it 'returns all dealerships' do
    create_dealerships(10)
    get '/api/v1/dealerships'

    expect(response).to have_http_status(:success)
    expect(JSON.parse(response.body).size).to eq(10)
  end
end
