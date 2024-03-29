# Job-Search-Optimization
## Files:

1. [Project RoadMap](https://github.com/kylenewm/Job-Search-Optimization/blob/main/Project_roadmap.png)  
2. [Notebook](https://github.com/kylenewm/Job-Search-Optimization/blob/main/JobSearchOptimizerEDA.ipynb) with all EDA and basic modeling
3. [Visuals](Visuals.ipynb) that did not load on GitHub
4. [SQL commands](https://github.com/kylenewm/Job-Search-Optimization/blob/main/Joining_Tables.sql)

## Problem: 
There is a lack of consistency for job postings in roles such as Data Analyst, Data Scientist, Data Engineer, etc.
## Goal:

I wanted to gain exposure to all areas within data science (data engineering, data scientist, ML engineer, etc.) so I created a project that would allow me to do while also constructing a useful tool that otherr people can utilize during their job search. 

## Steps:

### Webscraping
1. Scrape data from Indeed using [Apify's](https://apify.com/hynekhruska/indeed-scraper) built in webscraper for Indeed
      - Make sure to set the job type to the jobs you are interested in (ex. Data Scientist) and set that as the starting point for the URL in apify
      - It may also help to use a secure VPN to deal with 403 errors. 
2. Download scraped data into a csv file and eliminate large row gaps or other critical errors that prevent dataset from uploading properly into DataBricks
### Setting up environment, uploading, and altering dataset
1. Connect to cluster through either (AWS, Google Cloud, or MicrosoftAzure) and upload files into Databricks using the UI 
      - When uploading files make sure to check the boxes enabling multi-line and first row headers
2. Run commands in [SQL file](https://github.com/kylenewm/Job-Search-Optimization/blob/main/Joining_Tables.sql) in Databricks
### Preprocessing, EDA, and Topic Modeling
1. Preprocess data with NLTK and regex
2. Find similary job postings using TF-IDF vectorizer and cosine similarity
3. Extract most frequent skills from corpus 
![image](https://user-images.githubusercontent.com/100371414/210187369-73d78d31-450a-4fa3-9a56-32913b4d637a.png)
4. Use sentence transformers, HDBSCAN, UMAP, and BERT for topic modeling
5. Utilize topics from bert topic model to create labels for supervised model
![image](https://user-images.githubusercontent.com/100371414/210187194-cd584efc-6ee7-4863-9e74-b966dbfc0f59.png)

### Next Steps:

1. Create a supevised model to classify new job postings
2. Create interface that allows an individual to select one of the few thousands job postings and then display the results using Shiny for python. 
### Resources to get started
Here is a link to a great [paper for text-based clustering techniques with large datasets](https://link.springer.com/article/10.1007/s40747-021-00512-9)

My personal favorite NLP tutorial: https://www.analyticsvidhya.com/blog/2022/01/roadmap-to-master-nlp-in-2022/

A great website for finding pretrained models etc. They have awesome tutorials and solid documentation. https://huggingface.co/ 

If you are interested to dive further into HDBSCAN, I would read the [documentation] (https://hdbscan.readthedocs.io/en/latest/index.html)
## Citations
Mehta, V., Bawa, S. & Singh, J. WEClustering: word embeddings based text clustering technique for large datasets. Complex Intell. Syst. 7, 3211–3224 (2021). https://doi.org/10.1007/s40747-021-00512-9

Hynek Hruska (2022). Apify: Indeed Scraper [Software]. Available from https://apify.com/hynekhruska/indeed-scraper#indeed-scraper

