# Set the current price of a Tesla Model 3 
price = 35000 
# Set the monthly savings amount 
savings = 1000 
# Calculate the number of months it would take to save enough money 
months = price // savings 
# Calculate the number of years it would take to save enough money 
years = months // 12 
# Calculate the number of remaining months 
remaining_months = months % 12 
# Print the result 
print(f"It would take {years} years and {remaining_months} months to save enough money to buy a Tesla.")