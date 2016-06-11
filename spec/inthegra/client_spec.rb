require 'spec_helper'

describe Inthegra::Client do

  let(:client) do
    Inthegra::Client.new(email: 'email@test.com', password: 'teste123', api_key: 'qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq')
  end

  describe '.authenticate' do

    before do
      VCR.use_cassette('authenticate') do
        auth_token
      end
    end

    let :auth_token do
      client.authenticate
    end

    it "should return auth_token object" do
      expect(auth_token).to be_an_instance_of(Inthegra::AuthToken)
    end
  end

end
