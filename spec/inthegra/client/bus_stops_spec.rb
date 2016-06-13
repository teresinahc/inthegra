require 'spec_helper'

describe Inthegra::Client::BusStops do

  let(:client) do
    Inthegra::Client.new(email: 'email@test.com', password: 'teste123', api_key: 'qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq')
  end

  before do
    VCR.use_cassette('authenticate') do
      client.authenticate
    end
  end

  describe '.bus_stops' do

    let :bus_stops do
      VCR.use_cassette('bus_stops') do
        client.bus_stops
      end
    end

    it "should return an array" do
      expect(bus_stops).to be_an_instance_of(Array)
    end

    it "is expected not to be empty" do
      expect(bus_stops).not_to be_empty
    end

    it "is expected elements to be instance of BusStop" do
      expect(bus_stops[0]).to be_an_instance_of(Inthegra::BusStop)
    end
  end

  describe '.bus_stops_search' do
    before do
      VCR.use_cassette('bus_stops_search') do
        bus_stops_search
      end
    end

    let :bus_stops_search do
      client.bus_stops_search('ininga')
    end

    it "should return an array" do
      expect(bus_stops_search).to be_an_instance_of(Array)
    end

    it "is expected not to be empty" do
      expect(bus_stops_search).not_to be_empty
    end

    it "is expected elements to be instance of BusStop" do
      expect(bus_stops_search[0]).to be_an_instance_of(Inthegra::BusStop)
    end
  end

  describe '.bus_stops_by_line' do
    before do
      VCR.use_cassette('bus_stops_by_line') do
        bus_stops_by_line
      end
    end

    let :bus_stops_by_line do
      client.bus_stops_by_line('0401')
    end

    it "should return an array" do
      expect(bus_stops_by_line).to be_an_instance_of(Array)
    end

    it "is expected not to be empty" do
      expect(bus_stops_by_line).not_to be_empty
    end

    it "is expected elements to be instance of BusStop" do
      expect(bus_stops_by_line[0]).to be_an_instance_of(Inthegra::BusStop)
    end
  end

end
