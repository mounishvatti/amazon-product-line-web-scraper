import pandas as pd
from urllib.parse import urljoin
import requests
from bs4 import BeautifulSoup
from urllib3.util import url
import warnings

# Filter out DeprecationWarning related to pyarrow
warnings.filterwarnings("ignore", category=DeprecationWarning, module="pandas")

listing_url = ''
custom_headers = {
    'user-agent': '',
    'accept-language': ''}


def get_product_info(full_url):
    response_product = requests.get(full_url, headers=custom_headers)
    soup = BeautifulSoup(response_product.text, "lxml")
    title_element = soup.select_one('#productTitle')
    title = title_element.text.strip() if title_element else None
    # print(title)

    rating_element = soup.select_one('#acrPopover')
    rating_text = rating_element.attrs.get('title')
    rating = rating_text.replace('out of 5 stars', '') if rating_text else None

    # print(rating)

    price_element = soup.select_one('span.a-price')
    price_span = soup.select_one('span.a-offscreen') if price_element else None
    price = price_span.text.strip() if price_span else None

    # print(price)

    image_element = soup.select_one('#landingImage')
    image = image_element.attrs.get('src') if image_element else None

    description_element = soup.select_one('#feature-bullets')
    description = description_element.text.strip() if description_element else None

    review_elements = soup.select("div.review")

    scraped_reviews = []

    for review in review_elements:
        r_author_element = review.select_one("span.a-profile-name")
        r_author = r_author_element.text if r_author_element else None

        r_rating_element = review.select_one("i.review-rating")
        r_rating = r_rating_element.text.replace("out of 5 stars", "") if r_rating_element else None

        r_title_element = review.select_one("a.review_title")

        r_title_span_element = r_title_element.select_one("span:not([class])") if r_title_element else None
        r_title = r_title_span_element.text if r_title_span_element else None

        r_content_element = review.select_one("span.review-text")
        r_content = r_content_element.text if r_content_element else None

        r_date_element = review.select_one("span.review-date")
        r_date = r_date_element.text if r_date_element else None

        r_verified_element = review.select_one("span.a-size-mini")
        r_verified = r_verified_element.text if r_verified_element else None

        r = {
            "author": r_author,
            "rating": r_rating,
            "title": r_title,
            "content": r_content,
            "date": r_date,
            "verified": r_verified
        }

        scraped_reviews.append(r)

    return {
        "title": title,
        "image": image,
        "price": price_element,
        "description": description,
        "url": url,
        "reviews": list(scraped_reviews),
        "ratings": rating
    }


def parse_listing(param_listing_url):
    response = requests.get(param_listing_url, headers=custom_headers)
    soup_search = BeautifulSoup(response.text, "lxml")
    link_elements = soup_search.select("[data-asin] h2 a")
    page_data = []
    for link in link_elements:
        full_url = urljoin(param_listing_url, link.attrs.get("href"))
        product_info = get_product_info(full_url)
        page_data.append(product_info)

    next_page_el = soup_search.select_one('a:-soup-contains("Next")')
    if next_page_el:
        next_page_url = next_page_el.attrs.get('href')
        next_page_url = urljoin(param_listing_url, next_page_url)

    df = pd.DataFrame(page_data)
    excel_file = 'data.xlsx'
    csv_file = 'data.csv'
    json_file = 'data.json'

    # Convert DataFrame to CSV
    df.to_csv(csv_file, index=False)

    # Convert DataFrame to Excel
    df.to_excel(excel_file, index=False)

    # Convert DataFrame to JSON
    df.to_json(json_file, orient='records')

    # Optional: Display a message indicating successful export
    print("Data exported to CSV, Excel, and JSON files.")


# Call the function with the listing URL
parse_listing(listing_url)
