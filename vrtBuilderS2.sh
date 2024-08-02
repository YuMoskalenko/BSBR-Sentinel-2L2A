#!/bin/bash

# Check if gdalbuildvrt is installed
if ! command -v gdalbuildvrt &> /dev/null; then
    echo "gdalbuildvrt could not be found. Please install GDAL."
    exit 1
fi

# Get the scene ID from one of the files
for i in *B02_10m.tif; do
    sceneid=${i:0:21}
    break
done

# Define an array of band combinations
declare -a band_combinations=(
    "8_4_2 B08_10m.tif B04_10m.tif B02_10m.tif"
    "8_4_3 B08_10m.tif B04_10m.tif B03_10m.tif"
    "4_3_2 B04_10m.tif B03_10m.tif B02_10m.tif"
    "12_8_2 B12_20m.tif B08_10m.tif B02_10m.tif"
    "12_8_3 B12_20m.tif B08_10m.tif B03_10m.tif"
    "12_8_4 B12_20m.tif B08_10m.tif B04_10m.tif"
    "7_4_2 B07_20m.tif B04_10m.tif B02_10m.tif"
    "6_4_2 B06_20m.tif B04_10m.tif B02_10m.tif"
    "5_4_2 B05_20m.tif B04_10m.tif B02_10m.tif"
    "11_8_2 B11_20m.tif B08_10m.tif B02_10m.tif"
    "11_8_3 B11_20m.tif B08_10m.tif B03_10m.tif"
    "11_8_4 B11_20m.tif B08_10m.tif B04_10m.tif"
    "11_8_7 B11_20m.tif B08_10m.tif B07_20m.tif"
    "12_11_4 B12_20m.tif B11_20m.tif B04_10m.tif"
    "12_11_8A B12_20m.tif B11_20m.tif B8A_20m.tif"
    "8_11_2 B08_10m.tif B11_20m.tif B02_10m.tif"
    "8_11_4 B08_10m.tif B11_20m.tif B04_10m.tif"
)

# Loop through each band combination and create the VRT files
for combo in "${band_combinations[@]}"; do
    # Split the combination into its components
    set -- $combo
    output_suffix=$1
    shift
    bands=("$@")
    
    # Construct the output file name
    output_file="${sceneid}${output_suffix}.vrt"
    
    # Construct the input file names
    input_files=("${bands[@]/#/$sceneid}")
    
    # Run gdalbuildvrt with the appropriate arguments
    gdalbuildvrt -resolution highest -srcnodata 0 -separate "$output_file" "${input_files[@]}"
done
