[![CircleCI](https://circleci.com/gh/kickertw/UdacityDevOpsProj5.svg?style=svg)](https://app.circleci.com/pipelines/github/kickertw/UdacityDevOpsProj5)
# Udacity DevOps Scholarship - Phase 2 Containerization Project
## Summary
  This is my Udacity DevOps project on containerizing an ML (machine learning) microservice API. The ML program is written in python and exposed as an API using Flask. The main goals were to accompish the following:
  
  1. Create a Dockerfile in order to properly create a docker image with the ML API.
  2. Update a Makefile that will setup a python virtual environment and properly install python packages needed by the API (e.g. - Flask).
  3. Update bash shell scripts to build a docker image, run the docker image (with the API installed), and also run the image in kubernetes on a single pod.

## Instructions (Must be run from a bash prompt)
  1. Clone the repo and go into the subdirectory from the clone.
  2. To just run the ML API locally:

    > python app.py 
   
  3. To build a docker image and run the API as a container:

    > ./run_docker.sh

  4. To push the custom docker image to docker hub:

    > ./upload_docker.sh

  5. To run the API in kubernetes:

    > ./run_kubernetes.sh

  *(Note: The last command in **run_kubernetes.sh** may fail the first time run if the pod is fully deployed by the time of execution. If that happens, simply rerun the script)*  

## Repo files

  * .circleci/config.yml - The config yml for the CircleCI build
  * /model_data/housing.csv - The data from kaggle for the python app
  * output_txt_files/ - Output files of logs from the ML API running in the docker and kubernetes deployments
  * app.py - The ML API
  * Dockerfile - The docker file. It creates a custom image of a base python image, copies the necessary python and data files.
  * Makefile - A Makefile with steps for virtual environment setup, python package installation, and dockerfile/python linting.
  * make_prediction.sh - shell script to call the api to get a prediction back
  * run_docker.sh - builds the docker image and then runs it
  * run_kubernetes.sh - runs the docker image and deploys it to kubernetes
  * upload_docker.sh - pushes the docker image to docker hub.