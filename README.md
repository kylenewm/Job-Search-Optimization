# Job-Search-Optimization
## Files:

1. [Project RoadMap](https://github.com/kylenewm/Job-Search-Optimization/blob/main/Project_roadmap.png)  
2. [Notebook](https://github.com/kylenewm/Job-Search-Optimization/blob/main/JobSearchOptimizerEDA.ipynb) with all EDA and basic modeling
3. [Visuals](Visuals.ipynb) that did not load on GitHub
3. preproccess.py (in progress)
4. clustering.py (in progress)
5. supervised.py (in progress)
6. main.py (in progress)
7. [SQL commands](https://github.com/kylenewm/Job-Search-Optimization/blob/main/Joining_Tables.sql)

## Goal:

I wanted to gain exposure to all areas within data science (data engineering, data scientist, ML engineer, etc.) so I created a project that would allow me to do while also constructing a useful tool. 
## Important Note:

I only had a 14 day subscription to databricks and placed out of the AWS free tier within a week. As a result, I had to redefine the scope of the project that was shown on the project road map. 
## Steps:
1. Scrape data from Indeed using [Apify's](https://apify.com/hynekhruska/indeed-scraper) built in webscraper for Indeed
    1. Make sure to set the job type to the jobs you are interested in (ex. Data Scientist) and set that as the starting point for the URL in apify
    2. It may also help to use a secure VPN to deal with 403 errors. 
  
2. Download files into a spreadsheet and remove large gaps in data (ex. No data between row 27 and row 93)

3. Connect to cluster through either (AWS, Google Cloud, or MicrosoftAzure) and upload files into Datbricks using the UI 
    1. When uploading files make sure to check the boxes enabling multi-line and first row headers

4. Run commands in [SQL file](https://github.com/kylenewm/Job-Search-Optimization/blob/main/Joining_Tables.sql) in Databricks
5. Download into notebook and perform EDA, clustering, and then construct a supervised learning model with similar metrics to allow for interpretability and feature extraction
6. Create a reproducible workflow with seperate .py files within a virtual environment 

Here is a link to a great [paper for text-based clustering techniques with large datasets](https://link.springer.com/article/10.1007/s40747-021-00512-9)

My personal favorite NLP tutorial: https://www.analyticsvidhya.com/blog/2022/01/roadmap-to-master-nlp-in-2022/

## Citations
Mehta, V., Bawa, S. & Singh, J. WEClustering: word embeddings based text clustering technique for large datasets. Complex Intell. Syst. 7, 3211–3224 (2021). https://doi.org/10.1007/s40747-021-00512-9

Hynek Hruska (2022). Apify: Indeed Scraper [Software]. Available from https://apify.com/hynekhruska/indeed-scraper#indeed-scraper
