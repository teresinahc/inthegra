require 'spec_helper'

describe Inthegra::Client do

  let(:client) do
    Inthegra::Client.new(email: 'email@email.com', password: 'pwd123', api_key: '123')
  end

  describe '.authenticate' do

    before do
      stub_post('signin')
      .to_return(body: fixture('signin.json'), headers: { 'Content-Type': 'application/json', Date: Time.now.strftime("%a, %d %b %Y %H:%M:%S GMT"), 'X-Api-Key': client.api_key})
    end

    it 'should get the correct response' do
      auth_token = client.authenticate

      expect(auth_token).to be_a Inthegra::AuthToken
      expect(client.auth_token.token).to eq('87d19cf0-59f1-434b-9250-54b35902154c')
    end

  end

end
