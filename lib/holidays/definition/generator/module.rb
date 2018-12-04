require 'holidays/errors'

module Holidays
  module Definition
    module Generator
      class Module
        def call(files, module_name, regions, month_strings, custom_methods)
          raise ArgumentError.new("module name cannot be nil") if module_name.nil?
          raise ArgumentError.new("module name cannot be blank") if module_name.empty?

          raise ArgumentError.new("files cannot be nil") if files.nil?
          raise ArgumentError.new("files cannot be empty") if files.empty?
          raise ArgumentError.new("files must all be strings") unless files.all? { |f| f.is_a?(String) }

          raise ArgumentError.new("regions cannot be nil") if regions.nil?
          raise ArgumentError.new("regions cannot be empty") if regions.empty?

          raise ArgumentError.new("month strings cannot be nil") if month_strings.nil?
          raise ArgumentError.new("month strings cannot be empty") if month_strings.empty?

          module_src =<<-EOM
# encoding: utf-8
module Holidays
  # This file is generated by the Ruby Holidays gem.
  #
  # Definitions loaded: #{files.join(', ')}
  #
  # All the definitions are available at https://github.com/holidays/holidays
  module #{module_name.to_s.upcase} # :nodoc:
    def self.defined_regions
      [:#{regions.join(', :')}]
    end

    def self.holidays_by_month
      {
          #{month_strings.join(",\n")}
      }
    end

    def self.custom_methods
      {
          #{custom_methods}
      }
    end
  end
end
          EOM

          module_src
        end
      end
    end
  end
end
