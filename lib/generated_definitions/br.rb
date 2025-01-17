# encoding: utf-8
module Holidays
  # This file is generated by the Ruby Holidays gem.
  #
  # Definitions loaded: definitions/br.yaml
  #
  # All the definitions are available at https://github.com/holidays/holidays
  module BR # :nodoc:
    def self.defined_regions
      [:br]
    end

    def self.holidays_by_month
      {
        0 => [{:function => "easter(year)", :function_arguments => [:year], :function_modifier => -47, :name => "Carnaval", :regions => [:br]},
              {:function => "easter(year)", :function_arguments => [:year], :function_modifier => -2, :name => "Sexta-feira Santa", :regions => [:br]},
              {:function => "easter(year)", :function_arguments => [:year], :function_modifier => 60, :name => "Corpus Christi", :regions => [:br]}],
        1 => [{:mday => 1, :name => "Dia da Confraternização Universal", :regions => [:br]},
              {:mday => 25, :name => 'Aniversário de São Paulo', :regions => [:br]}],
        4 => [{:mday => 21, :name => "Dia de Tiradentes", :regions => [:br]}],
        5 => [{:mday => 1, :name => "Dia do Trabalho", :regions => [:br]}],
        6 => [{:mday => 9, :name => "Revolução Constitucionalista", :regions => [:br]}],
        9 => [{:mday => 7, :name => "Proclamação da Independência", :regions => [:br]}],
        10 => [{:mday => 12, :name => "Dia de Nossa Senhora Aparecida", :regions => [:br]},
              {:mday => 28, :name => "Dia do servidor público", :regions => [:br]}],
        11 => [{:mday => 2, :name => "Dia de Finados", :regions => [:br]},
              {:mday => 20, :name => "Conciência Negra", :regions => [:br]},
              {:mday => 15, :name => "Proclamação da República", :regions => [:br]}],
        12 => [{:mday => 25, :name => "Natal", :regions => [:br]}]
        }
    end

    def self.custom_methods
      {
          
      }
    end
  end
end
