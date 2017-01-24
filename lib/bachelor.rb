def get_first_name_of_season_winner(data,season)
        data[:"#{season}"].each{|k| return k[:"name"].split(" ").first if k[:"status"]=="Winner"}
end

def get_contestant_name(data,occupation)
          data.map{|season,datalist|
          datalist.map{|list| return list["name"] if list["occupation"] == occupation}
        }
end

def count_contestants_by_hometown(data,town)
  count = 0
      data.map{|season,datalist|
      datalist.map{|list| count+= 1 if list["hometown"]== town}
              }
      count
end

def get_occupation(data,hometown)
    data.map {|season,datalist|
    datalist.map{|list| return list["occupation"]  if list["hometown"]==hometown}
        }
 end
