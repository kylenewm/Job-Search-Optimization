# Job-Search-Optimization
## Files:

1. [Project RoadMap](https://github.com/kylenewm/Job-Search-Optimization/blob/main/Project_roadmap.png)  
2. [Notebook](https://github.com/kylenewm/Job-Search-Optimization/blob/main/JobSearchOptimizerEDA.ipynb) with all EDA and basic modeling
3. [Visuals](Visuals.ipynb) that did not load on GitHub
4. User interface with shiny for python (in progress) 
5. [SQL commands](https://github.com/kylenewm/Job-Search-Optimization/blob/main/Joining_Tables.sql)

## Goal:

I wanted to gain exposure to all areas within data science (data engineering, data scientist, ML engineer, etc.) so I created a project that would allow me to do while also constructing a useful tool


## Redfining Scope:
The original goal was to create production ready code from webscraping Data to having a web app that user could find a list of relevant roles based on their interests. The scope of the project was redefined due to the following limitations.

### Limitiation 1 :
    
Inability to gain access to an API or access to webscrape. Websites that jost job postings such as Indeed and LinkedIn have made it difficult to extract information from their website. Also, most APIs are geared towards companies wanting to post job roles and not for potential applicants wanting to gain access to the job postings.
    
### Solution 1 :
    
Used a third party tool that performed the webscraping and webcrwaling. As a result of doing this, you will have to find a way to extract information for your own database. This project only works given you have the database as a CSV file already. 

### Limitiation 2:

Formulating a supervised learning approach. I had attempted to create an ontology that would allow me to assign labels to specific job roles (target variable).         However, there was clear personal bias with this approach. On top of this the only way to train the model would have been to inidividually label whether a posting     belonged to the right title, a tedious task when working with thousands of different postings.  
    
### Solution 2:
    
I decided to find "similiar" job postings to the ones I had interest in instead. 

### Limitiation 3:

I only had a 14 day subscription to databricks and placed out of the AWS free tier within a week.

### Solution 3:
Keeping data engineering and ML engineering aspects of the project to a minimum. 

## Steps:
1. Scrape data from Indeed using [Apify's](https://apify.com/hynekhruska/indeed-scraper) built in webscraper for Indeed
    1. Make sure to set the job type to the jobs you are interested in (ex. Data Scientist) and set that as the starting point for the URL in apify
    2. It may also help to use a secure VPN to deal with 403 errors. 
  
2. Download files into a spreadsheet and remove large gaps in data (ex. No data between row 27 and row 93)

3. Connect to cluster through either (AWS, Google Cloud, or MicrosoftAzure) and upload files into Datbricks using the UI 
    1. When uploading files make sure to check the boxes enabling multi-line and first row headers

4. Run commands in [SQL file](https://github.com/kylenewm/Job-Search-Optimization/blob/main/Joining_Tables.sql) in Databricks
5. Download into notebook and perform EDA, clustering.
6. Next steps: Create a user interface that allows an individual to select one of the few thousands job postings and then display the results using Shiny for pyhton. 

Here is a link to a great [paper for text-based clustering techniques with large datasets](https://link.springer.com/article/10.1007/s40747-021-00512-9)

My personal favorite NLP tutorial: https://www.analyticsvidhya.com/blog/2022/01/roadmap-to-master-nlp-in-2022/
A great website for finding pretrained models etc. They have awesome tutorials and solid documentation. https://huggingface.co/ 
If you are interested to dive further into HDBSCAN, I would read the [documentation] (https://hdbscan.readthedocs.io/en/latest/index.html)
## Citations
Mehta, V., Bawa, S. & Singh, J. WEClustering: word embeddings based text clustering technique for large datasets. Complex Intell. Syst. 7, 3211–3224 (2021). https://doi.org/10.1007/s40747-021-00512-9

Hynek Hruska (2022). Apify: Indeed Scraper [Software]. Available from https://apify.com/hynekhruska/indeed-scraper#indeed-scraper

