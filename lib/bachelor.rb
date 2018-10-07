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
num = 0 
  data.each do |season, list|
    list.each do |person|
      person.each do |topic, detail|
       if detail == hometown
        num +=1
      end
    end
   end
 end
num
end

def get_occupation(data, hometown)
  data.each do |season, list|
    list.each do |person|
      person.each do |topic, detail|
       if detail == hometown
        return person["occupation"]
      end
    end
   end
 end
end

 
def get_average_age_for_season(data, season)

count = 0
age = 0
  data[season].each do |list|
    list.each do |key,value|
      if key == "age"
        count += 1
        age += value.to_f
      end
    end
  end
return (age/count).round
end