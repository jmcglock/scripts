# Set the average distance driven per day (in miles) 
distance = 20 
# Set the average carbon emissions per mile (in pounds) 
emissions_per_mile = 0.9 
# Calculate the total carbon emissions per day 
emissions_per_day = round(distance * emissions_per_mile, 1)
# Print the result 
print(f"Each car ride produces {emissions_per_day} pounds of carbon emissions.")