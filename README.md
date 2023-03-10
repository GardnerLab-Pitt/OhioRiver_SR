# OhioRiver_SR

This repository contains code for creating a dataset of chlorophyll-a and satellite imagery for lakes and rivers within the Ohio River Basin. 

* The LC02_matchup_pull file is for pulling surface reflectance over wqp / lagos sites for Landsat Collection 2. 

* The LC02_polygon_pull file is for pulling surface reflectance over all CONUS river reaches for Landsat Collection 2

* The SR correction file is for creating band correction coefficeints based on all of the SR data over all wqp / lagos sites in the matchup pull file. Note that these are not matchup observations, but all of the data over wqp sites (matchups haven't been filtered yet). 

* The model prototyping code is for testing models for predicting chlorophyll-a. 
