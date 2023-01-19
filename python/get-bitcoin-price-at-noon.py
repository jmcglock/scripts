import requests 
import datetime 
# Set the URL of the Bitcoin price API 
api_url = "https://api.coindesk.com/v1/bpi/currentprice.json" 
# Fetch the current time 
now = datetime.datetime.now() 
# Check if it is noon 
if now.hour == 12 and now.minute == 0: 
    # Send a GET request to the API and store the response 
    response = requests.get(api_url) 
    # Check if the request was successful 
    if response.status_code == 200: 
        # Parse the JSON data from the response 
        data = response.json() 
        # Print the current Bitcoin price 
        print(f"The current price of Bitcoin is {data['bpi']['USD']['rate']} USD.")
else:
    # Retrieve the last successful API request from cache
    with open('last_successful_request.txt', 'r') as f:
        data = json.loads(f.read())
        # Print the cached Bitcoin price
        print(f"The current price of Bitcoin is {data['bpi']['USD']['rate']} USD.")
 # Send a GET request to the API and store the response 
response = requests.get(api_url) 
# Check if the request was successful 
if response.status_code == 200: 
    # Parse the JSON data from the response 
    data = response.json() 
    # Cache the successful API request
    with open('last_successful_request.txt', 'w') as f:
        f.write(json.dumps(data))
    # Print the current Bitcoin price 
    print(f"The current price of Bitcoin is {data['bpi']['USD']['rate']} USD.")