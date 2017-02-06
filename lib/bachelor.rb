def get_first_name_of_season_winner(data, season)
  data[season].each { |val|
    if val["status"] == "Winner"
      return val["name"].split(" ").shift
    end
  }
  nil
end

def get_contestant_name(data, occupation)
  data.each_value { |season|
    season.each { |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    }
  }
  nil
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each_value { |season|
    season.each { |contestant|
      if contestant["hometown"] == hometown
        counter += 1
      end
    }
  }
  counter
end

def get_occupation(data, hometown)
  data.each_value { |season|
    season.each { |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    }
  }
  nil
end

def get_average_age_for_season(data, season)
  sum = 0
  counter = 0
  data[season].each { |contestant|
    sum += contestant["age"].to_i
    counter += 1
  }
  (sum.to_f / counter.to_f).round.to_i
end
