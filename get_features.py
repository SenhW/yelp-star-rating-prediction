import sys
import json

business_data = 'yelp_academic_dataset_business.json'
tip_data = 'yelp_academic_dataset_tip.json'
checking_data = 'yelp_academic_dataset_checkin.json'
user_data = 'yelp_academic_dataset_user.json'
review_data = 'yelp_academic_dataset_review.json'
review_data_subset = 'yelp_academic_dataset_review_test.json'


def get_business_ids(category):
    with open(business_data) as businesses:
        business_ids = []
        for business in businesses:
            business = json.loads(business)
            if category in business['categories']:
                business_ids.append(business['business_id'])
    return business_ids

def find_average_rating():
    total_star_rating = 0.0
    total_businesses = 0.0
    with open(business_data) as businesses:
        for business in businesses:
            business = json.loads(business)
            total_star_rating += business['stars']
            total_businesses += 1
    return total_star_rating / total_businesses

def count_frequencies():
    with open(review_data_subset) as reviews:
        for review in reviews:
            review = json.loads(reviews)
            print review

count_frequencies()