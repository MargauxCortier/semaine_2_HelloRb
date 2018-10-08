
def time_string(a)
    Time.at(a).utc.strftime("%H:%M:%S")
end

# utc unique time cohordonate
# strftime string format time