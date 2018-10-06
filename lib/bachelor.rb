def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant|
    contestant.each do |topic, detail|
      if detail == "Winner"
        name = contestant["name"]
        return name.split(' ' ).first
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, list|
    list.each do |person|
      person.each do |topic, detail|
      if detail == occupation
       return person["name"]
      end
    end
  end
end
end

def count_contestants_by_hometown(data, hometown)
  num_contestants = 0 
  data.each do |season, list|
    list.each do |person|
      person.each do |topic, detail|
      if detail == hometown
       num_contestants +=1
      end
    end
   end
 end
num_contestants

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
end
