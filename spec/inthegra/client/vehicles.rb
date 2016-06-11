require 'spec_helper'

describe Inthegra::Client::Vehicles do

  let(:client) do
    Inthegra::Client.new(email: 'email@test.com', password: 'teste123', api_key: 'qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq')
  end

  before do
    VCR.use_cassette('authenticate') do
      client.authenticate
    end
  end

  describe '.vehicles' do

    let :vehicles do
      VCR.use_cassette('vehicles') do
        client.vehicles
      end
    end

    it "should return an array" do
      expect(vehicles).to be_an_instance_of(Array)
    end

    it "is expected not to be empty" do
      expect(vehicles).not_to be_empty
    end

    it "is expected elements to be instance of BusStop" do
      expect(vehicles[0]).to be_an_instance_of(Inthegra::Vehicle)
    end

  end

  describe '.vehicles_by_line' do

    let :vehicles_by_line do
      VCR.use_cassette('vehicles_by_line') do
        client.vehicles_by_line('0401')
      end
    end

    it "should return an array" do
      expect(vehicles_by_line).to be_an_instance_of(Array)
    end

    it "is expected not to be empty" do
      expect(vehicles_by_line).not_to be_empty
    end

    it "is expected elements to be instance of BusStop" do
      expect(vehicles_by_line[0]).to be_an_instance_of(Inthegra::Vehicle)
    end

  end

end
