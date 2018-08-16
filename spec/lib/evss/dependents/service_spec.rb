# frozen_string_literal: true

require 'rails_helper'

describe EVSS::Dependents::Service do
  let(:user) { build(:evss_user) }
  subject { described_class.new(user) }

  it 'f' do
    form = {"submit_process"=>
  {"application"=>
    {"accept_warnings"=>false,
     "app_status"=>"Open",
     "bnft_claim_type"=>"EBENDEPENDENCY686c",
     "created_date"=>1533846225178,
     "documents"=>[],
     "expiration_date"=>1565382225178,
     "has30_percent"=>true,
     "modified_date"=>1533846230731,
     "valid_user"=>true},
   "rbps"=>true,
   "va_fax_number"=>"540-597-1792",
   "va_office"=>
    {"address_line1"=>"Regional Office",
     "address_line2"=>"116 N Jefferson Street",
     "address_line3"=>"",
     "address_locality"=>"DOMESTIC",
     "city"=>"Roanoke",
     "country"=>{"drop_down_country"=>"USA", "text_country"=>""},
     "post_office"=>"NONE",
     "postal_type"=>"NONE",
     "shared_addrs_ind"=>"N",
     "state"=>"",
     "zip_code"=>"24016",
     "zip_last_four"=>""},
   "va_office_code"=>"314",
   "va_office_name"=>"Roanoke",
   "veteran"=>
    {"address"=>
      {"address_line1"=>"3003 Van Ness St NW",
       "address_line2"=>"Apt W204",
       "address_line3"=>"",
       "address_locality"=>"DOMESTIC",
       "city"=>"Washington",
       "country"=>{"drop_down_country"=>"USA", "text_country"=>""},
       "post_office"=>"NONE",
       "postal_type"=>"NONE",
       "shared_addrs_ind"=>"N",
       "state"=>"DC",
       "zip_code"=>"20008",
       "zip_last_four"=>""},
     "children"=>
      [{"address"=>
         {"address_line1"=>"",
          "address_line2"=>"",
          "address_line3"=>"",
          "address_locality"=>"DOMESTIC",
          "city"=>"",
          "country"=>{"drop_down_country"=>"", "text_country"=>""},
          "post_office"=>"NONE",
          "postal_type"=>"NONE",
          "shared_addrs_ind"=>"N",
          "state"=>"",
          "zip_code"=>"",
          "zip_last_four"=>""},
        "attended_school"=>false,
        "city_of_birth"=>"Alexandria",
        "corp_ptcnpnt_id"=>600111773,
        "country_of_birth"=>{"drop_down_country"=>"", "text_country"=>""},
        "date_of_birth"=>1220936400000,
        "date_of_birth_from_corp"=>true,
        "dependent_status"=>"NOTONAWARD",
        "disabled"=>false,
        "email_address"=>"",
        "first_name"=>"JOHNNY",
        "govt_tuition_assist"=>false,
        "has_no_file_number"=>false,
        "has_no_ssn"=>false,
        "last_name"=>"BOY",
        "married"=>false,
        "middle_name"=>"",
        "primary_phone"=>{"phone_type"=>"DAYTIME"},
        "proof_depncy_ind"=>false,
        "rlsn_ids"=>[],
        "same_residency"=>true,
        "schools"=>[],
        "secondary_phone"=>{"phone_type"=>"DAYTIME"},
        "ssn"=>"430-43-0303",
        "ssn_from_corp"=>true,
        "state_of_birth"=>"VA",
        "temp_data_id"=>{},
        "unique_identifier"=>"-983926537",
        "veteran"=>false},
       {"address"=>
         {"address_line1"=>"",
          "address_line2"=>"",
          "address_line3"=>"",
          "address_locality"=>"DOMESTIC",
          "city"=>"",
          "country"=>{"drop_down_country"=>"", "text_country"=>""},
          "post_office"=>"NONE",
          "postal_type"=>"NONE",
          "shared_addrs_ind"=>"N",
          "state"=>"",
          "zip_code"=>"",
          "zip_last_four"=>""},
        "attended_school"=>false,
        "city_of_birth"=>"",
        "corp_ptcnpnt_id"=>600142192,
        "country_of_birth"=>{"drop_down_country"=>"", "text_country"=>""},
        "date_of_birth"=>894776400000,
        "date_of_birth_from_corp"=>true,
        "dependent_status"=>"NOTONAWARD",
        "disabled"=>false,
        "email_address"=>"",
        "first_name"=>"NEWC",
        "govt_tuition_assist"=>false,
        "has_no_file_number"=>false,
        "has_no_ssn"=>false,
        "last_name"=>"CHLDLNAME",
        "married"=>false,
        "middle_name"=>"",
        "primary_phone"=>{"phone_type"=>"DAYTIME"},
        "proof_depncy_ind"=>false,
        "rlsn_ids"=>[],
        "same_residency"=>true,
        "schools"=>[],
        "secondary_phone"=>{"phone_type"=>"DAYTIME"},
        "ssn"=>"234-23-5412",
        "ssn_from_corp"=>true,
        "state_of_birth"=>"",
        "temp_data_id"=>{},
        "unique_identifier"=>"100791547",
        "veteran"=>false},
       {"address"=>
         {"address_line1"=>"",
          "address_line2"=>"",
          "address_line3"=>"",
          "address_locality"=>"DOMESTIC",
          "city"=>"",
          "country"=>{"drop_down_country"=>"", "text_country"=>""},
          "post_office"=>"NONE",
          "postal_type"=>"NONE",
          "shared_addrs_ind"=>"N",
          "state"=>"",
          "zip_code"=>"",
          "zip_last_four"=>""},
        "attended_school"=>false,
        "city_of_birth"=>"",
        "corp_ptcnpnt_id"=>600142965,
        "country_of_birth"=>{"drop_down_country"=>"", "text_country"=>""},
        "date_of_birth"=>961131600000,
        "date_of_birth_from_corp"=>true,
        "dependent_status"=>"NOTONAWARD",
        "disabled"=>false,
        "email_address"=>"",
        "first_name"=>"FNAME",
        "govt_tuition_assist"=>false,
        "has_no_file_number"=>false,
        "has_no_ssn"=>false,
        "last_name"=>"LNAME",
        "married"=>false,
        "middle_name"=>"MN",
        "primary_phone"=>{"phone_type"=>"DAYTIME"},
        "proof_depncy_ind"=>false,
        "rlsn_ids"=>[],
        "same_residency"=>true,
        "schools"=>[],
        "secondary_phone"=>{"phone_type"=>"DAYTIME"},
        "ssn"=>"346-23-6426",
        "ssn_from_corp"=>true,
        "state_of_birth"=>"",
        "temp_data_id"=>{},
        "unique_identifier"=>"1800453668",
        "veteran"=>false},
       {"address"=>
         {"address_line1"=>"",
          "address_line2"=>"",
          "address_line3"=>"",
          "address_locality"=>"DOMESTIC",
          "city"=>"",
          "country"=>{"drop_down_country"=>"", "text_country"=>""},
          "post_office"=>"NONE",
          "postal_type"=>"NONE",
          "shared_addrs_ind"=>"N",
          "state"=>"",
          "zip_code"=>"",
          "zip_last_four"=>""},
        "attended_school"=>false,
        "city_of_birth"=>"",
        "corp_ptcnpnt_id"=>600144961,
        "country_of_birth"=>{"drop_down_country"=>"", "text_country"=>""},
        "date_of_birth"=>962773200000,
        "date_of_birth_from_corp"=>true,
        "dependent_status"=>"NOTONAWARD",
        "disabled"=>false,
        "email_address"=>"",
        "first_name"=>"EWRWE",
        "govt_tuition_assist"=>false,
        "has_no_file_number"=>false,
        "has_no_ssn"=>false,
        "last_name"=>"WERWRWER",
        "married"=>false,
        "middle_name"=>"WER",
        "primary_phone"=>{"phone_type"=>"DAYTIME"},
        "proof_depncy_ind"=>false,
        "rlsn_ids"=>[],
        "same_residency"=>true,
        "schools"=>[],
        "secondary_phone"=>{"phone_type"=>"DAYTIME"},
        "ssn"=>"234-24-2424",
        "ssn_from_corp"=>true,
        "state_of_birth"=>"",
        "temp_data_id"=>{},
        "unique_identifier"=>"728854532",
        "veteran"=>false},
       {"address"=>
         {"address_line1"=>"",
          "address_line2"=>"",
          "address_line3"=>"",
          "address_locality"=>"DOMESTIC",
          "city"=>"",
          "country"=>{"drop_down_country"=>"", "text_country"=>""},
          "post_office"=>"NONE",
          "postal_type"=>"NONE",
          "shared_addrs_ind"=>"N",
          "state"=>"",
          "zip_code"=>"",
          "zip_last_four"=>""},
        "attended_school"=>false,
        "city_of_birth"=>"Vienna",
        "corp_ptcnpnt_id"=>600212195,
        "country_of_birth"=>{"drop_down_country"=>"", "text_country"=>""},
        "date_of_birth"=>1521435600000,
        "date_of_birth_from_corp"=>true,
        "dependent_status"=>"NOTONAWARD",
        "disabled"=>false,
        "email_address"=>"",
        "first_name"=>"TEST",
        "govt_tuition_assist"=>false,
        "has_no_file_number"=>false,
        "has_no_ssn"=>false,
        "last_name"=>"FORD",
        "married"=>false,
        "middle_name"=>"",
        "primary_phone"=>{"phone_type"=>"DAYTIME"},
        "proof_depncy_ind"=>false,
        "rlsn_ids"=>[],
        "same_residency"=>true,
        "schools"=>[],
        "secondary_phone"=>{"phone_type"=>"DAYTIME"},
        "ssn"=>"876-32-1212",
        "ssn_from_corp"=>true,
        "state_of_birth"=>"VA",
        "temp_data_id"=>{},
        "unique_identifier"=>"-1701499640",
        "veteran"=>false}],
     "corp_ptcnpnt_id"=>600061742,
     "country_of_birth"=>{"drop_down_country"=>"", "text_country"=>""},
     "date_of_birth"=>515739600000,
     "date_of_birth_from_corp"=>false,
     "edipi"=>"1007697216",
     "email_address"=>"wford@gmail.com",
     "first_name"=>"WESLEY",
     "has_no_file_number"=>false,
     "has_no_ssn"=>false,
     "last_name"=>"FORD",
     "marriage_type"=>"MARRIED",
     "married"=>false,
     "middle_name"=>"Watson",
     "person_type_nm"=>"Veteran",
     "previous_marriages"=>[],
     "primary_phone"=>{"area_nbr"=>"202", "phone_nbr"=>"461-9724", "phone_type"=>"DAYTIME"},
     "rlsn_ids"=>[],
     "spouse"=>
      {"address"=>
        {"address_line1"=>"",
         "address_line2"=>"",
         "address_line3"=>"",
         "address_locality"=>"DOMESTIC",
         "city"=>"",
         "country"=>{"drop_down_country"=>"", "text_country"=>""},
         "post_office"=>"NONE",
         "postal_type"=>"NONE",
         "shared_addrs_ind"=>"N",
         "state"=>"",
         "zip_code"=>"",
         "zip_last_four"=>""},
       "city_of_birth"=>"",
       "corp_ptcnpnt_id"=>600142193,
       "country_of_birth"=>{"drop_down_country"=>"", "text_country"=>""},
       "current_marriage"=>
        {"country"=>{"drop_down_country"=>"", "text_country"=>""},
         "dependent_status"=>"UNKNOWN",
         "end_country"=>{"drop_down_country"=>"", "text_country"=>""},
         "ex_spouse"=>false,
         "marriage_termination_reason_type"=>"NONE"},
       "date_of_birth"=>347695200000,
       "date_of_birth_from_corp"=>true,
       "dependent_status"=>"NOTONAWARD",
       "email_address"=>"",
       "first_name"=>"JANE",
       "has_no_file_number"=>false,
       "has_no_ssn"=>false,
       "last_name"=>"DOE",
       "married"=>false,
       "middle_name"=>"",
       "previous_marriages"=>[],
       "primary_phone"=>{"phone_type"=>"DAYTIME"},
       "proof_depncy_ind"=>false,
       "rlsn_ids"=>[],
       "same_residency"=>true,
       "secondary_phone"=>{"phone_type"=>"DAYTIME"},
       "ssn_from_corp"=>false,
       "state_of_birth"=>"",
       "temp_data_id"=>{},
       "unique_identifier"=>"-966168094",
       "veteran"=>false},
     "ssn"=>"796-04-3735",
     "ssn_from_corp"=>false,
     "temp_data_id"=>{},
     "unique_identifier"=>"1194913109",
     "va_file_number"=>"796-04-3735"}}}

    VCR.configure do |c|
      c.allow_http_connections_when_no_cassette = true
    end
    form = form.deep_transform_keys { |k| k.camelize(:lower) }
    form = {"submitProcess"=>
      {"application"=>
        {"acceptWarnings"=>false,
         "appStatus"=>"Open",
         "bnftClaimType"=>"EBENDEPENDENCY686c",
         "createdDate"=>1533846225178,
         'draftFormId' => 377000,
         "expirationDate"=>1565382225178,
         "has30Percent"=>true,
         "modifiedDate"=>1533846230731,
         "validUser"=>true},
       }}

    binding.pry; fail
    VCR.use_cassette('foo', record: :once) do
      form = subject.retrieve.body.deep_transform_keys { |k| k.camelize(:lower) }
      form = subject.clean_form(form).body.deep_transform_keys { |k| k.camelize(:lower) }
      subject.validate(form)
      {"form_id"=>377000}
      subject.submit(form)
    end
  end
end
