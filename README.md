# 2024 Olympics Medals Data Analysis

This repository contains a project focused on **web scraping** the medal counts from the 2024 Olympics and analyzing the data using **SQL**. The goal is to provide insights into country-wise performance and trends in medal distribution.

---

## Project Overview

The objectives of this project are:
- Scrape the medals table from **Wikipedia**.
- Store the data in an **Excel .csv format**.
- Import the .csv file into **MySQL Workbench** for analysis.
- Perform SQL-based analysis to extract meaningful insights.

---

## Features

- **Web Scraping:**
  - Extracted medal counts by country from Wikipedia.
  - Data includes the following fields:
    - `country_name`: Name of the country.
    - `gold`: Number of gold medals.
    - `silver`: Number of silver medals.
    - `bronze`: Number of bronze medals.
    - `total_count`: Total medals won by the country.

- **SQL Analysis:**
  - **Top Countries:** Identify countries with the highest medal counts.
  - **Medal Distribution:** Analyze gold, silver, and bronze medal trends.
  - **Rankings:** Generate a medal table ranking based on total medal counts.

---

## Tools & Technologies

- **Python:** For web scraping using libraries like `BeautifulSoup` and `Requests`.
- **MySQL Workbench:** For storing and querying the dataset.
- **Pandas:** For initial data manipulation and saving data to .csv.
- **Jupyter Notebook:** For documenting and showcasing the project workflow.

---

## Key Insights

- **Top Countries:** Determine which countries dominated the medal table.
- **Medal Trends:** Breakdown of gold, silver, and bronze medal distributions.
- **Total Medal Count:** Insights into the overall performance by country.

---

## How to Use

1. Clone the repository:
   ```bash
   git clone https://github.com/RAJESHJOGI1200/2024-olympics-medals-analysis.git
   ```

2. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```

3. Run the web scraping script:
   ```bash
   python scrape_medals.py
   ```

4. Import the scraped .csv data into MySQL Workbench:
   ```sql
   -- Example: Loading CSV into MySQL
   LOAD DATA INFILE 'medals_data.csv'
   INTO TABLE olympics_medals
   FIELDS TERMINATED BY ','
   LINES TERMINATED BY '\n';
   ```

5. Perform SQL queries to analyze the data.

---

## Dataset Details

The dataset includes the following fields:
- `country_name`: Name of the country.
- `gold`: Number of gold medals.
- `silver`: Number of silver medals.
- `bronze`: Number of bronze medals.
- `total_count`: Total number of medals.

---

## Future Improvements

- Automate updates of medal data during the Olympics.
- Integrate visualizations using Tableau or Power BI.
- Perform advanced trend analysis using Python.

---

## Contact

For any queries, reach out at:  
📧 [rajeshjogi1200@gmail.com](mailto:rajeshjogi1200@gmail.com)  
🔗 [LinkedIn](https://www.linkedin.com/in/rajesh-jogi-967102240/)  

---
