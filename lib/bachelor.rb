def get_contestant_name(data,occupation)
          data.map{|season,datalist|
          datalist.map{|list| return list[:name] if list[:"occupation"] == occupation}
        }
end

def get_first_name_of_season_winner(data,season)
    foundname=data[:"#{season}"][0][:"name"].split(" ")
    foundname[0].to_s
end

def count_contestants_by_hometown(data,town)
  count = 0
      data.map{|season,datalist|
      datalist.map{|list| count+= 1 if list[:"hometown"]== town}
              }
      count
end

def get_occupation(data,hometown)
    data.each{|season,datalist|
    datalist.each{|list| return list[:occupation] if list[:"hometown"]== hometown }
 }
end

#def get_average_age_for_season(data, season)
  # code here
#end
