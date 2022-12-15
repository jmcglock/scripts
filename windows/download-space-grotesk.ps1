# Define the URL of the font download page
$url = "https://fonts.google.com/specimen/Space+Grotesk"

# Use the Invoke-WebRequest cmdlet to download the page
$webpage = Invoke-WebRequest -Uri $url

# Use the Select-String cmdlet to find the download link for the font
$fontLink = $webpage.Content | Select-String -Pattern "https://fonts.gstatic.com/s/spacegrotesk/v\d+/SpaceGrotesk-.*?.ttf"

# Download the font file using the download link
Invoke-WebRequest -Uri $fontLink.Matches.Value -OutFile "SpaceGrotesk.ttf"
