module ProsperWorks
  class Person < BaseEntity

    attr_accessor :address,
                  :company_id,
                  :company_name,
                  :contact_type_id,
                  :date_last_contacted,
                  :interaction_count,
                  :title,

                  :emails,
                  :phone_numbers,
                  :socials,
                  :websites,

                  :prefix,
                  :first_name,
                  :middle_name,
                  :last_name,
                  :suffix

    def self.api_name
      "people"
    end

    def opportunities
      uri = self.class.get_uri(self.class.api_name, self.id, 'related/opportunities') 
      response = self.class.send_request('get', uri) 
      Opportunity.handle_multiple_response(response)
    end
  end
end
