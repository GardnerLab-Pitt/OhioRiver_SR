# OhioRiver_SR

This repository contains code for creating a dataset of chlorophyll-a and satellite imagery for lakes and rivers within the Ohio River Basin. 

* The LC02_matchup_pull file is for pulling surface reflectance over wqp / lagos sites for Landsat Collection 2. 

* The LC02_polygon_pull file is for pulling surface reflectance over all CONUS river reaches for Landsat Collection 2

* The SR correction file is for creating band correction coefficeints based on all of the SR data over all wqp / lagos sites in the matchup pull file. Note that these are not matchup observations, but all of the data over wqp sites (matchups haven't been filtered yet). 

* The Build Matchups file is for filtering the SR data over wqp / lagos sites to +- 2 days of an in situ observation at that site. This file also applies the band correction coefficients to the data and creates band ratios / color metrics that could be important as predictor variables. 

* The Model Prototyping code is for testing models for predicting chlorophyll-a. 
