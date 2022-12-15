# Set the energy content of gasoline (in British Thermal Units per gallon)
gasoline_energy = 124000

# Set the average efficiency of a gasoline engine (in percent)
gasoline_efficiency = 20

# Set the average capacity factor of a wind turbine (in percent)
wind_capacity_factor = 35

# Calculate the average amount of energy produced per gallon of gasoline
gasoline_output = gasoline_energy * (gasoline_efficiency / 100)

# Calculate the average amount of energy produced per kilowatt-hour of wind energy
wind_output = 1000 * (wind_capacity_factor / 100)

# Print the result
print(f"One gallon of gasoline produces {gasoline_output} British Thermal Units of energy, "
      f"compared to {wind_output} kilowatt-hours of wind energy.")
