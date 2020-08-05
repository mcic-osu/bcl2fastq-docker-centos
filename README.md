# bcl2fastq-docker-centos
A Docker container with Illumina's bcl2fastq (version v2.20.0.422) installed on a CentOS base image. 

This repository contains the Dockerfile, and the Docker container image is automatically being built at [Docker Hub](https://hub.docker.com/repository/docker/mcic/bcl2fastq-centos).

I built this container because I could not get [the only other bcl2fastq container that I could find](https://github.com/Zymo-Research/docker-bcl2fastq) to work on our HPC system (OSC). That container used the Alpine OS. Here, I used a CentOS base image, which is one of the OS's that Illumina recommends in its documentation for the bcf2fastq software. The downside is that this container is larger than the Alpine-based one. 
