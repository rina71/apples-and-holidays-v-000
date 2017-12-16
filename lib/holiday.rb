require 'pry'

def second_supply_for_fourth_of_july(holiday_supplies)
  # given that holiday_hash looks like this:
  {
    :winter => {
      :christmas => ["Lights", "Wreath"],
      :new_years => ["Party Hats"]
    },
    :summer => {
      :fourth_of_july => ["Fireworks", "BBQ"]
    },
    :fall => {
      :thanksgiving => ["Turkey"]
    },
    :spring => {
      :memorial_day => ["BBQ"]
    }
  }
  holiday_supplies[:summer][:fourth_of_july][1]# return the second element in the 4th of July array
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  {
    :winter => {
      :christmas => ["Lights", "Wreath"],
      :new_years => ["Party Hats"]
    },
    :summer => {
      :fourth_of_july => ["Fireworks", "BBQ"]
    },
    :fall => {
      :thanksgiving => ["Turkey"]
    },
    :spring => {
      :memorial_day => ["BBQ"]
    }
  }
  # binding.pry

  holiday_hash[:winter].each {|holiday, supplies| supplies << supply}
  # holiday_hash[:winter][:new_years] = supply

end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring].each {|holiday, supplies| supplies << supply}
  # add the second argument to the memorial day array

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
  # remember to return the updated hash

end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].collect {|season,supply| supply }.flatten
  # return an array of all of the supplies that are used in the winter season

end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each{|season,holiday| puts "#{season.capitalize}:"
  count = 0
   holiday.each{|holiday, supply| puts "  #{holiday.capitalize}: #{supply[0]},#{supply[1]}"
  }}
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

end

def all_holidays_with_bbq(holiday_hash)
holiday_hash.each{|season,holiday|
  holiday.each{|holiday, supply| if supply.include?("BBQ") == true
    return holiday

  end}}
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end
