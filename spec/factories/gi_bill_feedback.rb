# frozen_string_literal: true

FactoryBot.define do
  factory :gi_bill_feedback do
    state('pending')
    form(
      {
        address: {
          street: 'street',
          street2: 'street2',
          city: 'city',
          state: 'VA',
          postalCode: '12345',
          country: 'US'
        },
        serviceBranch: 'Air Force',
        serviceAffiliation: 'Veteran',
        fullName: {
          prefix: 'Mr.',
          first: 'Test',
          middle: 'middle',
          last: 'last',
          suffix: 'Jr.'
        },
        serviceDateRange: {
          from: '2000-01-01',
          to: '2000-01-02'
        },
        anonymousEmail: 'foo@foo.com',
        onBehalfOf: 'Myself',
        educationDetails: {
          school: {
            name: 'school'
          },
          facilityCode: '20606313',
          programs: {
            'MGIB-AD Ch 30': true
          },
          assistance: {
            TA: true
          }
        },
        issue: {
          studentLoans: true
        },
        phone: '5551110000',
        issueDescription: 'issueDescription',
        issueResolution: 'issueResolution'
      }.to_json
    )
  end
end
