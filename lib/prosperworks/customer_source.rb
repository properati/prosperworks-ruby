module ProsperWorks
  class CustomerSource < BaseEntity
    extend ApiOperations::List

    attr_accessor :name

    def self.api_name
      "customer_sources"
    end

  end
end
