#!/bin/sh

cd /home/earthcube/geoedf/files/shapefile2geojson

hpccm --recipe recipe.hpccm --format singularity --singularity-version=3.5 > Singularity

sudo singularity build Shapefile2GeoJSON.sif Singularity

mv Shapefile2GeoJSON.sif /images

rm Singularity
