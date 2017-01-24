def get_first_name_of_season_winner(data,season)
  data[:"#{season}"][0][:"status"]=="Winner"
    foundname=data[:"#{season}"][0][:"name"].split(" ")
    foundname[0].to_s
    end

def get_contestant_name(data, occupation)
  # code here
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
