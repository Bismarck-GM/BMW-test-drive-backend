require 'rails_helper'

describe 'Models API', type: :request do
  it 'returns all Car Models/Families' do
    create_family(3)
    get '/api/v1/models'

    expect(response).to have_http_status(:success)
    expect(JSON.parse(response.body).size).to eq(3)
  end
end
