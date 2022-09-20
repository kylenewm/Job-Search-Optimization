# Job-Search-Optimization
## Steps:
1. Scrape data from Indeed using [Apify's](https://apify.com/hynekhruska/indeed-scraper) built in webscraper for Indeed
    1. Make sure to set the job type to the jobs you are interested in (ex. Data Scientist) and set that as the starting point for the URL in apify
    2. It may also help to use a secure VPN to deal with 403 errors. 
  
2. Download files into a spreadsheet and remove large gaps in data (ex. No data between row 27 and row 93)

3. Connect to cluster through either (AWS, Google Cloud, or MicrosoftAzure) and upload files into Datbricks using the UI 
    1. When uploading files make sure to check the boxes enabling multi-line and first row headers

4. Run commands in [SQL file](https://github.com/kylenewm/Job-Search-Optimization/blob/main/Joining_Tables.sql) in Databricks
[Paper for text-based clustering techniques with large datasets](https://link.springer.com/article/10.1007/s40747-021-00512-9)
Mehta, V., Bawa, S. & Singh, J. WEClustering: word embeddings based text clustering technique for large datasets. Complex Intell. Syst. 7, 3211–3224 (2021). https://doi.org/10.1007/s40747-021-00512-9
