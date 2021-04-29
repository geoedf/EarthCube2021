# EarthCube 2021 GeoEDF Demo

This is a demo of the Geospatial **E**xtensible **D**ata **F**ramework (**GeoEDF**) designed for the EarthCube 2021 Annual Conference.

GeoEDF is an extensible data framework designed to simplify data wrangling in geospatial research workflows. GeoEDF enables researchers 
to define scientific workflows as a logical sequence of data acquisition and processing steps. Reusable building blocks termed _data 
connectors_ and _data processors_ implement data acquisition from various repositories using various data access protocols, and a range 
of domain-agnostic domain-specific geospatial processing operations respectively. These open source connectors and processors are managed 
in a GitHub repository and automatically packaged as Singularity containers in order to manage their respective software dependencies. 
Researchers can use any of these existing connectors or processors; or else build their own for use in their workflows.

The GeoEDF framework defines the syntax and semantics of connectors and processors, while the engine implements the validation, transformation, 
job planning, and execution of declarative GeoEDF workflows encoded in YAML syntax. GeoEDF utilizes the Pegasus Workflow Management System (WMS) 
for planning and executing GeoEDF workflows on diverse compute resources (local machine, Condor pool, or HPC system).

This demo is self-contained and will illustrate the intuitive and simple workflow YAML syntax and how the GeoEDF workflow engine can be used 
to execute a YAML GeoEDF workflow. Specifically, this demo includes the following:

1. A hydrologic data preparation workflow that acquires MODIS data from a NASA DAAC and aggregates it across each 
   of the polygons in a watershed shapefile.
2. A new Shapefile2GeoJSON processor is built and used to post-process the resulting shapefile from step 1 to make 
   it easier to visualize using map libraries like Folium.

Since this demo requires various software (including the Pegasus WMS and Condor), we have built it as a Docker container that is based on 
the [Pegasus Development Environment](https://github.com/pegasus-isi/pegasus-workflow-development-environment). 

**Notes:**

1. The latest version of Docker is required, and you will need to run this container in privileged mode.
2. It is preferable to allocate Docker atleast 4GB of memory to ensure that the workflow runs efficiently in parallel.
3. You may choose to build the container image on your local machine, but please note that this will take a while.
4. A previously built image has been pushed to Docker Hub, but will take a while to download and run.

## Usage

1. `docker run -p 8888:8888 --privileged geoedf/earthcube2021`
2. In a browser window, go to `localhost:8888`
7. Find the RK_01_EarthCube_GeoEDF_Demo.ipynb Jupyter notebook and follow the instructions there to try out the demo GeoEDF workflow.

## Supplemental Information

1. A paper describing GeoEDF can be found [here](https://dl.acm.org/doi/abs/10.1145/3311790.3396631). 
2. Currently contributed connectors and processors can be found [here](https://github.com/geoedf).
