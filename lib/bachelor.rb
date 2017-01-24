def get_first_name_of_season_winner(data,season)
  data[:"#{season}"][0][:"status"]=="Winner"
    foundname=data[:"#{season}"][0][:"name"].split(" ")
    foundname[0].to_s
    end

def get_contestant_name(data,occupation)
            data.each{|season,contestants|
                      contestants.each{|list,info| if list[:"occupation"] == "#{occupation}"
                            return list[:name]
                      end
                        }
            }
  end

def get_contestants_by_hometown(data,town)
      data.map{|season,datalist|
      datalist.map{|list,info| if list[:"hometown"]=="#{town}"
        list[:"hometown"]
      end
      }
      }
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
