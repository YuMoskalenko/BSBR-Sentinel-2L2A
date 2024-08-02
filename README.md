# BSBR-Sentinel-2L2A

A set of scripts for preprocessing Sentinel-2 Level-2A remote sensing data for use in monitoring the ecosystems of the Black Sea Biosphere Reserve.

Due to the similarity of natural conditions and the common geological past, the entire territory of the Lower Dnieper terrace-delta plain is considered part of the Black Sea Biosphere Reserve region. This region is quite large and is covered by three adjacent Sentinel-2 remote sensing data tiles (T36TUS, T36TVS, and T36TWS), which creates certain inconveniences when analyzing these satellite images within the framework of monitoring the dynamics of the region's natural and anthropogenic ecosystems. To overcome these inconveniences, a set of scripts for preprocessing remote sensing data was developed at the Black Sea Biosphere Reserve.

The repository contains 3 scripts that preprocess Sentinel-2A and Sentinel-2B Level-2A remote sensing data for use in monitoring natural and anthropogenic ecosystems in the Black Sea Biosphere Reserve region of the National Academy of Sciences of Ukraine.

The script cropS2.sh performs the first stage of preprocessing, which involves cropping remote sensing data scenes along the boundaries of the Black Sea Biosphere Reserve region. To ensure the correct operation of this script, place the spectral channel files B02, B03, B04, B05, B06, B07, B08, B08A, B11, B12 from each of the three tiles - T36TUS, T36TVS, and T36TWS (a total of 30 files in jp2 format) into the working directory.

The script mergeS2.sh performs the second stage of remote sensing data preprocessing, which involves channel-wise merging of the individual channels cropped to the boundaries of the reserve region from the three tiles (T36TUS, T36TVS, and T36TWS) that fully cover the reserve region.

The script vrtBuilderS2.sh creates virtual rasters with various combinations of the merged spectral channels obtained in the second stage of remote sensing data preprocessing.

This repository is part of the methodological support for the ecosystem monitoring framework of the Black Sea Biosphere Reserve and adjacent non-reserve territories within the Nature Chronicles of the Black Sea Biosphere Reserve.
