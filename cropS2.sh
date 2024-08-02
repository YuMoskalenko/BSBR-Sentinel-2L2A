#!/bin/bash

# Check if gdal_translate is installed
if ! command -v gdal_translate &> /dev/null; then
    echo "gdal_translate could not be found. Please install GDAL."
    exit 1
fi

# Loop through all files with the .jp2 extension
for n in *.jp2; do
    # Extract the scene value from the file name (first 30 characters)
    scena=${n:0:30}
    
    # Perform the file translation using gdal_translate
    if gdal_translate -projwin 383260 5189000 540000 5094080 "$n" "$scena.tif"; then
        # If conversion is successful, delete the .jp2 file
        rm "$n"
    else
        echo "Conversion failed for $n"
    fi
done


