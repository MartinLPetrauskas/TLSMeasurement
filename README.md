# TLS Measurement Study
By Soraya Alli and Martin Petrauskas

This is the final semester project for CY4740 Network Security at Northeastern University

## Project Purpose
The purpose of this project is to gain a glimpse into the current state of SSL/TLS security of the web

We analyzed 10,000 websites using the SSLLabs API: https://www.ssllabs.com/projects/ssllabs-apis/

The main focus of this study is seeing the overall grade for websites, the protocols they support, and any major vulnerabilities they might have

## File Overview:
* **top-1m.csv**: Top 1 million websites, retrieved from https://tranco-list.eu/ on March 4, 2020
* **1-10000.csv**: CSV file which contains all results for this project
* **ssllabsscanner.py**: Defines functions which call the SSLLabs API
* **setup.sh**: Simple Bash script to install necessary programs and packages so that the program can be run on EC2 instances
* **scan_sites**: Script which scans sites in bulk and outputs data to CSV file
* **add_geolocation**: Simple script which adds geolocation info to a CSV file
* **data_analysis**: Program to analyze results of scanning websites in bulk
* **run_analysis.sh**: Bash script which runs the data_analysis on various optional arguments
* **results/**: Directory which contains all results from running data_analysis
* **TLS Presentation.pdf**: Presentation with all the relevant results

### TODO:
* Merge add_geolocation into main tls_analysis functionality
* Implement click CMD line interface in files where not present
* Make the output files neater.....
* Refine industry/sector classifications