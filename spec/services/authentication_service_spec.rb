require 'rails_helper'

describe AuthenticationTokenService do
  describe '.encode' do
    it 'returns an authentication token' do
      user = create(:user)
      token = described_class.encode(user)
      decoded_token = JWT.decode(
        token,
        described_class::HMAC_SECRET,
        true,
        {
          algorithm: described_class::ALGORITHM_TYPE
        }
      )
      expect(decoded_token).to eq([
                                    {
                                      'username' => user.username,
                                      'user_id' => user.id,
                                      'exp' => 72.hours.from_now.to_i
                                    },
                                    {
                                      'alg' => 'HS256'
                                    }
                                  ])
    end
  end
end
