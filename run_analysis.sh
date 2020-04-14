#!/bin/bash

./final_analysis/data_analysis 1-10000.csv --all --vuln --output results-all-vuln.txt
./final_analysis/data_analysis 1-10000.csv --all --output results-all.txt
./final_analysis/data_analysis 1-10000.csv --industry --vuln --output results-industry-vuln.txt
./final_analysis/data_analysis 1-10000.csv --industry --output results-industry.txt
./final_analysis/data_analysis 1-10000.csv --geo --vuln --output results-geo-vuln.txt
./final_analysis/data_analysis 1-10000.csv --geo --output results-geo.txt
./final_analysis/data_analysis 1-10000.csv --log --vuln --output results-log-vuln.txt
./final_analysis/data_analysis 1-10000.csv --log --output results-log.txt