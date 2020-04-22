#!/usr/bin/env python3

import requests
import time
import sys
import logging

API = 'https://api.ssllabs.com/api/v3/'


def requestAPI(path, payload=None):
    """
    This is a helper function that takes the path to the relevant API call and the user defined payload and requests
    the data/server test from Qualys SSL Labs.
    @param path: path relevant to API call (usually 'analyze')
    @param payload: JSON object with information about the parameters for the API call
    @return: JSON object with results from API call
    """
    url = API + path

    try:
        response = requests.get(url, params=payload)
    except requests.exceptions.RequestException:
        logging.exception('Request failed.')
        sys.exit(1)

    data = response.json()
    return data


def scan(host, fromCache):
    """
    This function will begin an assessment and return the results
    @param host: hostname which will be analyzed
    @param fromCache: determines if the API will retrieve cached assessment reports
    @return: JSON object with API results
    """
    path = 'analyze'
    payload = {
        'host': host,
        'all': 'done',
        'ignoreMismatch': 'on',
    }
    if fromCache:
        payload.update({'fromCache': 'on', 'maxAge': 24})
    else:
        payload.update({'startNew': 'on'})
    results = requestAPI(path, payload)

    if not fromCache:
        payload.pop('startNew')

    # There is no need to poll for the results right away since it takes 60+ seconds to get them
    time.sleep(10)

    # A variety of errors can appear while making API requests.
    # Fail-safe option is to return if any errors appear and let the invoking program deal with them
    if 'errors' in results.keys():
        return results

    while results['status'] != 'READY' and results['status'] != 'ERROR':
        time.sleep(30)
        results = requestAPI(path, payload)

    return results
