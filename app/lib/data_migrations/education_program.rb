# frozen_string_literal: true
module DataMigrations
  module EducationProgram
    module_function

    def migrate
      EducationBenefitsClaim.where(form_type: '1990').find_each do |education_benefits_claim|
        parsed_form = education_benefits_claim.parsed_form

        if parsed_form['educationProgram'].blank?
          parsed_form['educationProgram'] = parsed_form['school'] || {}

          education_type = parsed_form['educationType']
          parsed_form['educationProgram']['educationType'] = education_type if education_type.present?
        end

        education_benefits_claim.instance_variable_set(:@parsed_form, nil)

        education_benefits_claim.update_attributes!(form: parsed_form.to_json)
      end
    end
  end
end