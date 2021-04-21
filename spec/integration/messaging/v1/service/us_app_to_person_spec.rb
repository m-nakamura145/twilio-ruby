##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

require 'spec_helper.rb'

describe 'UsAppToPerson' do
  it "can create" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.messaging.v1.services('MGXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                          .us_app_to_person.create(brand_registration_sid: 'BNXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX', description: 'description', message_samples: ['message_samples'], us_app_to_person_usecase: 'us_app_to_person_usecase', has_embedded_links: true, has_embedded_phone: true)
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {
        'BrandRegistrationSid' => 'BNXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
        'Description' => 'description',
        'MessageSamples' => Twilio.serialize_list(['message_samples']) { |e| e },
        'UsAppToPersonUsecase' => 'us_app_to_person_usecase',
        'HasEmbeddedLinks' => true,
        'HasEmbeddedPhone' => true,
    }
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://messaging.twilio.com/v1/Services/MGXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Compliance/Usa2p',
        data: values,
    ))).to eq(true)
  end

  it "receives create responses" do
    @holodeck.mock(Twilio::Response.new(
        201,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "brand_registration_sid": "BNaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "messaging_service_sid": "MGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "description": "Send marketing messages about sales and offers to opted in customers.",
          "message_samples": [
              "EXPRESS: Denim Days Event is ON",
              "LAST CHANCE: Book your next flight for just 1 (ONE) EUR"
          ],
          "us_app_to_person_usecase": "MARKETING",
          "has_embedded_links": true,
          "has_embedded_phone": false,
          "status": "PENDING",
          "campaign_id": "CXaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "is_externally_registered": false,
          "rate_limits": {
              "att": {
                  "mps": 600,
                  "msg_class": "A"
              },
              "tmobile": {
                  "brand_tier": "TOP"
              }
          },
          "date_created": "2021-02-18T14:48:52Z",
          "date_updated": "2021-02-18T14:48:52Z",
          "url": "https://messaging.twilio.com/v1/Services/MGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Compliance/Usa2p"
      }
      ]
    ))

    actual = @client.messaging.v1.services('MGXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                                 .us_app_to_person.create(brand_registration_sid: 'BNXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX', description: 'description', message_samples: ['message_samples'], us_app_to_person_usecase: 'us_app_to_person_usecase', has_embedded_links: true, has_embedded_phone: true)

    expect(actual).to_not eq(nil)
  end

  it "can delete" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.messaging.v1.services('MGXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                          .us_app_to_person.delete()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'delete',
        url: 'https://messaging.twilio.com/v1/Services/MGXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Compliance/Usa2p',
    ))).to eq(true)
  end

  it "receives delete responses" do
    @holodeck.mock(Twilio::Response.new(
        204,
      nil,
    ))

    actual = @client.messaging.v1.services('MGXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                                 .us_app_to_person.delete()

    expect(actual).to eq(true)
  end

  it "can fetch" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.messaging.v1.services('MGXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                          .us_app_to_person.fetch()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://messaging.twilio.com/v1/Services/MGXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Compliance/Usa2p',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "brand_registration_sid": "BNaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "messaging_service_sid": "MGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "description": "Send marketing messages about sales and offers to opted in customers.",
          "message_samples": [
              "EXPRESS: Denim Days Event is ON",
              "LAST CHANCE: Book your next flight for just 1 (ONE) EUR"
          ],
          "us_app_to_person_usecase": "MARKETING",
          "has_embedded_links": true,
          "has_embedded_phone": false,
          "status": "PENDING",
          "campaign_id": "CXaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "is_externally_registered": false,
          "rate_limits": {
              "att": {
                  "mps": 600,
                  "msg_class": "A"
              },
              "tmobile": {
                  "brand_tier": "TOP"
              }
          },
          "date_created": "2021-02-18T14:48:52Z",
          "date_updated": "2021-02-18T14:48:52Z",
          "url": "https://messaging.twilio.com/v1/Services/MGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Compliance/Usa2p"
      }
      ]
    ))

    actual = @client.messaging.v1.services('MGXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                                 .us_app_to_person.fetch()

    expect(actual).to_not eq(nil)
  end
end