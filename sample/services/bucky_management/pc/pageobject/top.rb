# frozen_string_literal: true

require 'bucky/test_equipment/pageobject/base_pageobject'
module Services
  module BuckyManagement
    module Pc
      module PageObject
        class Top < Bucky::TestEquipment::PageObject::BasePageObject
          protected

          # Add some user operations for this page
          # Sample ====================
          # @param [Hash] args
          # def search_freeword(**args)
          #  freeword_form.send_keys(args[:word])
          #  freeword_form.submit
          # end
        end
      end
    end
  end
end
