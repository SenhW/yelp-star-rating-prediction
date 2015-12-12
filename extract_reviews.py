import json
import re
from collections import Counter

review_data_subset = 'yelp_academic_dataset_review_test.json'

def extract_reviews():
    f = open('text', 'w')
    with open(review_data_subset) as reviews:
        for review in reviews:
            review = json.loads(review)
            if review['stars'] == 5:
                f.write(review['text'].encode('ascii', 'ignore').decode('ascii') + "\n")

# Associate words with word counts

extract_reviews()

with open('text') as f:
    sentence = f.read()

words = re.findall(r'\w+', sentence)
word_counts = Counter(words)
print(word_counts)