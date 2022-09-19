# Job-Search-Optimization
Steps:
1. Scrape data from Indeed using [Apify's](https://apify.com/hynekhruska/indeed-scraper) built in webscraper for Indeed
  a. Make sure to set the job type to the jobs you are interested in (ex. Data Scientist) and set that as the starting point for the URL in apify
  b. It may also help to use a secure VPN to deal with 403 errors. 
2. Download files into a spreadsheet and remove large gaps in data (ex. No data between row 27 and row 93)
3. Connect to cluster through either (AWS, Google Cloud, or MicrosoftAzure) and upload files into Datbricks using the UI 
  a. When uploading files make sure to check the boxes enabling multi-line and first row headers
4. Run commands in SQL file in Databricks
