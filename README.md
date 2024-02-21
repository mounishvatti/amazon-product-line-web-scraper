![amazon](https://img.shields.io/badge/Amazon-FF9900.svg?style=for-the-badge&logo=Amazon&logoColor=white) 
# Product Scraper

This Python script is designed to scrape product information, including titles, ratings, prices, images, descriptions, and reviews, from an Amazon product listing. The scraped data is then exported to CSV, Excel, and JSON files for further analysis.

## Tech Stack
![Python](https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54) ![PyCharm](https://img.shields.io/badge/pycharm-143?style=for-the-badge&logo=pycharm&logoColor=black&color=black&labelColor=green) ![env](https://img.shields.io/badge/.ENV-ECD53F.svg?style=for-the-badge&logo=dotenv&logoColor=black) 

[`BeautifulSoap4`](https://www.crummy.com/software/BeautifulSoup/bs4/doc/) 
[`Requests`](https://requests.readthedocs.io/en/latest/)

## Prerequisites

Ensure you have the required Python libraries installed:

```bash
pip install pandas requests beautifulsoup4 lxml
```

## Usage

1. Update the `listing_url` variable with the desired Amazon product listing URL.

2. Adjust the `custom_headers` dictionary if needed, including the 'user-agent' and 'accept-language' values.

3. Run the script:

```bash
python amazon_scraper.py
```

## Script Overview

The script consists of two main functions:

### `get_product_info(full_url)`

This function takes a product URL, sends a request to Amazon, and parses the HTML content using BeautifulSoup. It extracts information such as title, rating, price, image, description, and reviews.

### `parse_listing(param_listing_url)`

This function retrieves a list of product links from the specified Amazon listing URL. It then iterates through each product, calls `get_product_info` to gather information, and stores the data in a Pandas DataFrame. The DataFrame is then exported to CSV, Excel, and JSON files.

## Exported Files

- `data.csv`: Contains the scraped data in CSV format.
- `data.xlsx`: Contains the scraped data in Excel format.
- `data.json`: Contains the scraped data in JSON format.

## Note

The script includes optional code to filter out `DeprecationWarning` related to `pyarrow`. If not needed, feel free to remove or modify this part based on your requirements.

Feel free to customize the script according to your needs and adapt it for other Amazon product listings or e-commerce websites.
