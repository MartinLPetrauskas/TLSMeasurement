#!/bin/bash

./data_analysis 1-10000.csv --all --vuln --output ./results/results-all-vuln.txt
./data_analysis 1-10000.csv --all --output ./results/results-all.txt
./data_analysis 1-10000.csv --industry --vuln --output ./results/results-industry-vuln.txt
./data_analysis 1-10000.csv --industry --output ./results/results-industry.txt
./data_analysis 1-10000.csv --geo --vuln --output ./results/results-geo-vuln.txt
./data_analysis 1-10000.csv --geo --output ./results/results-geo.txt
./data_analysis 1-10000.csv --log --vuln --output ./results/results-log-vuln.txt
./data_analysis 1-10000.csv --log --output ./results/results-log.txt