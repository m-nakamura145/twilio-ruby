##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

require 'spec_helper.rb'

describe 'AddressConfiguration' do
  it "can read" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.conversations.v1.address_configurations.list()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://conversations.twilio.com/v1/Configuration/Addresses',
    ))).to eq(true)
  end

  it "receives read_all responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "meta": {
              "page": 0,
              "page_size": 50,
              "first_page_url": "https://conversations.twilio.com/v1/Configuration/Addresses?PageSize=50&Page=0",
              "previous_page_url": null,
              "url": "https://conversations.twilio.com/v1/Configuration/Addresses?PageSize=50&Page=0",
              "next_page_url": null,
              "key": "address_configurations"
          },
          "address_configurations": [
              {
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "sid": "IGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "address": "+37256123457",
                  "type": "sms",
                  "friendly_name": "My Test Configuration",
                  "auto_creation": {
                      "enabled": true,
                      "type": "webhook",
                      "conversation_service_sid": "ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                      "webhook_url": "https://example.com",
                      "webhook_method": "POST",
                      "webhook_filters": [
                          "onParticipantAdded",
                          "onMessageAdded"
                      ]
                  },
                  "date_created": "2016-03-24T21:05:50Z",
                  "date_updated": "2016-03-24T21:05:50Z",
                  "url": "https://conversations.twilio.com/v1/Configuration/Addresses/IGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
              },
              {
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "sid": "IGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaab",
                  "address": "+37256123458",
                  "type": "sms",
                  "friendly_name": "Studio Test Configuration",
                  "auto_creation": {
                      "enabled": false,
                      "type": "studio",
                      "conversation_service_sid": "ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                      "studio_flow_sid": "FWaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                      "studio_retry_count": 3
                  },
                  "date_created": "2016-03-24T21:05:50Z",
                  "date_updated": "2016-03-24T21:05:50Z",
                  "url": "https://conversations.twilio.com/v1/Configuration/Addresses/IGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaab"
              },
              {
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "sid": "IGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaac",
                  "address": "+37256123459",
                  "type": "sms",
                  "friendly_name": "Default Test Configuration",
                  "auto_creation": {
                      "enabled": true,
                      "type": "default"
                  },
                  "date_created": "2016-03-24T21:05:50Z",
                  "date_updated": "2016-03-24T21:05:50Z",
                  "url": "https://conversations.twilio.com/v1/Configuration/Addresses/IGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaac"
              }
          ]
      }
      ]
    ))

    actual = @client.conversations.v1.address_configurations.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_blank responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "meta": {
              "page": 0,
              "page_size": 50,
              "first_page_url": "https://conversations.twilio.com/v1/Configuration/Addresses?PageSize=50&Page=0",
              "url": "https://conversations.twilio.com/v1/Configuration/Addresses?PageSize=50&Page=0",
              "previous_page_url": null,
              "next_page_url": null,
              "key": "address_configurations"
          },
          "address_configurations": []
      }
      ]
    ))

    actual = @client.conversations.v1.address_configurations.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_by_address_type responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "meta": {
              "page": 0,
              "page_size": 50,
              "first_page_url": "https://conversations.twilio.com/v1/Configuration/Addresses?Type=sms&PageSize=50&Page=0",
              "previous_page_url": null,
              "url": "https://conversations.twilio.com/v1/Configuration/Addresses?Type=sms&PageSize=50&Page=0",
              "next_page_url": null,
              "key": "address_configurations"
          },
          "address_configurations": [
              {
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "sid": "IGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "address": "+37256123457",
                  "type": "sms",
                  "friendly_name": "My Test Configuration",
                  "auto_creation": {
                      "enabled": true,
                      "type": "webhook",
                      "conversation_service_sid": "ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                      "webhook_url": "https://example.com",
                      "webhook_method": "POST",
                      "webhook_filters": [
                          "onParticipantAdded",
                          "onMessageAdded"
                      ]
                  },
                  "date_created": "2016-03-24T21:05:50Z",
                  "date_updated": "2016-03-24T21:05:50Z",
                  "url": "https://conversations.twilio.com/v1/Configuration/Addresses/IGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
              },
              {
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "sid": "IGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaab",
                  "address": "+37256123458",
                  "type": "sms",
                  "friendly_name": "Studio Test Configuration",
                  "auto_creation": {
                      "enabled": false,
                      "type": "studio",
                      "conversation_service_sid": "ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                      "studio_flow_sid": "FWaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                      "studio_retry_count": 3
                  },
                  "date_created": "2016-03-24T21:05:50Z",
                  "date_updated": "2016-03-24T21:05:50Z",
                  "url": "https://conversations.twilio.com/v1/Configuration/Addresses/IGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaab"
              },
              {
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "sid": "IGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaac",
                  "address": "+37256123459",
                  "type": "sms",
                  "friendly_name": "Default Test Configuration",
                  "auto_creation": {
                      "enabled": true,
                      "type": "default"
                  },
                  "date_created": "2016-03-24T21:05:50Z",
                  "date_updated": "2016-03-24T21:05:50Z",
                  "url": "https://conversations.twilio.com/v1/Configuration/Addresses/IGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaac"
              }
          ]
      }
      ]
    ))

    actual = @client.conversations.v1.address_configurations.list()

    expect(actual).to_not eq(nil)
  end

  it "can fetch" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.conversations.v1.address_configurations('IGXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://conversations.twilio.com/v1/Configuration/Addresses/IGXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "sid": "IGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "address": "+37256123457",
          "type": "sms",
          "friendly_name": "My Test Configuration",
          "auto_creation": {
              "enabled": true,
              "type": "webhook",
              "conversation_service_sid": "ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
              "webhook_url": "https://example.com",
              "webhook_method": "POST",
              "webhook_filters": [
                  "onParticipantAdded",
                  "onMessageAdded"
              ]
          },
          "date_created": "2016-03-24T21:05:50Z",
          "date_updated": "2016-03-24T21:05:50Z",
          "url": "https://conversations.twilio.com/v1/Configuration/Addresses/IGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      }
      ]
    ))

    actual = @client.conversations.v1.address_configurations('IGXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()

    expect(actual).to_not eq(nil)
  end

  it "can create" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.conversations.v1.address_configurations.create(type: 'sms', address: 'address')
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {'Type' => 'sms', 'Address' => 'address', }
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://conversations.twilio.com/v1/Configuration/Addresses',
        data: values,
    ))).to eq(true)
  end

  it "receives create responses" do
    @holodeck.mock(Twilio::Response.new(
        201,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "sid": "IGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "address": "+37256123457",
          "type": "sms",
          "friendly_name": "My Test Configuration",
          "auto_creation": {
              "enabled": true,
              "type": "webhook",
              "conversation_service_sid": "ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
              "webhook_url": "https://example.com",
              "webhook_method": "POST",
              "webhook_filters": [
                  "onParticipantAdded",
                  "onMessageAdded"
              ]
          },
          "date_created": "2016-03-24T21:05:50Z",
          "date_updated": "2016-03-24T21:05:50Z",
          "url": "https://conversations.twilio.com/v1/Configuration/Addresses/IGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      }
      ]
    ))

    actual = @client.conversations.v1.address_configurations.create(type: 'sms', address: 'address')

    expect(actual).to_not eq(nil)
  end

  it "can update" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.conversations.v1.address_configurations('IGXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').update()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://conversations.twilio.com/v1/Configuration/Addresses/IGXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
    ))).to eq(true)
  end

  it "receives update responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "sid": "IGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "address": "+37256123457",
          "type": "sms",
          "friendly_name": "My Test Configuration Updated",
          "auto_creation": {
              "enabled": false,
              "type": "studio",
              "conversation_service_sid": "ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
              "studio_flow_sid": "FWaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
              "studio_retry_count": 3
          },
          "date_created": "2016-03-24T21:05:50Z",
          "date_updated": "2016-03-24T21:05:51Z",
          "url": "https://conversations.twilio.com/v1/Configuration/Addresses/IGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      }
      ]
    ))

    actual = @client.conversations.v1.address_configurations('IGXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').update()

    expect(actual).to_not eq(nil)
  end

  it "can delete" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.conversations.v1.address_configurations('IGXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').delete()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'delete',
        url: 'https://conversations.twilio.com/v1/Configuration/Addresses/IGXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
    ))).to eq(true)
  end

  it "receives delete responses" do
    @holodeck.mock(Twilio::Response.new(
        204,
      nil,
    ))

    actual = @client.conversations.v1.address_configurations('IGXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').delete()

    expect(actual).to eq(true)
  end
end