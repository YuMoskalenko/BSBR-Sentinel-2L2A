#!/bin/bash

# Check if gdal_merge.py is installed
if ! command -v gdal_merge.py &> /dev/null; then
    echo "gdal_merge.py could not be found. Please install GDAL."
    exit 1
fi

# Create the output directory if it doesn't already exist
mkdir -p ./NDDR

# Loop through all files with the .tif extension
for n in *.tif; do
    # Extract the BandResolution value from the file name
    BandResolution=${n:23:7}

    # Extract the scene value from the file name
    scena=${n:7:15}

    # Check if the output file already exists to avoid duplication
    output_file="./NDDR/NDDR_${scena}_${BandResolution}.tif"

    if [ ! -f "$output_file" ]; then
        # Perform the file merge using gdal_merge.py
        gdal_merge.py -n 0 -o "$output_file" T36TUS_"$scena"_"$BandResolution".tif T36TWS_"$scena"_"$BandResolution".tif T36TVS_"$scena"_"$BandResolution".tif

        # If merge is successful, delete the input files
        if [ $? -eq 0 ]; then
            rm T36TUS_"$scena"_"$BandResolution".tif
            rm T36TWS_"$scena"_"$BandResolution".tif
            rm T36TVS_"$scena"_"$BandResolution".tif
        else
            echo "Merge failed for $output_file"
        fi
    fi
done




