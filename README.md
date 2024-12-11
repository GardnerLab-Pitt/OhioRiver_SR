# OhioRiver_SR

This repository contains code for creating a dataset of chlorophyll-a and satellite imagery for lakes and rivers within the Ohio River Basin. 

* The LC02_matchup_pull file is for pulling surface reflectance over wqp / lagos sites for Landsat Collection 2. Note that matchups are actually created later , this file just collects all the SR data over wq sites and sets up the matchup process

* The LC02_polygon_pull file is for pulling surface reflectance over all CONUS river reaches for Landsat Collection 2

* The LC02_band_correction file is for creating correction coefficeints based on all of the SR data over wqp / lagos sites. 

* The LC02_build_matchups file is for filtering the SR data over wqp / lagos sites to +- 2 days of an in situ observation at that site. This file also applies the band correction coefficients to the data and creates band ratios / color metrics that could be important as predictor variables. 

* THe LC02_model_prototyping code is for training ml models and predicting chlorophyll-a in the Illinois and Ohio River Basins. 

* The nhd_centerline_to_polygon is a script for taking nhd centerlines and creating polygons areound unique reaches (COMID). This is a preprocessing step for running the LC02 polygon pull code.

* The rs_wq_comparison file is for comparing sites in the Illionis River Basin that have chlorophyll-a data with high temporal resolution (i.e. monthly sampling) and remote sensing predictions of chlorophyll-a. 
