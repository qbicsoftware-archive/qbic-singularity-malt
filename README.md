# qbic-singularity-MALT

[![https://www.singularity-hub.org/static/img/hosted-singularity--hub-%23e32929.svg](https://www.singularity-hub.org/static/img/hosted-singularity--hub-%23e32929.svg)](https://singularity-hub.org/collections/641)

A Singularity container for MALT, the MEGAN alignment tool (https://ab.inf.uni-tuebingen.de/software/malt). 
   
For further information or help reffering the container, please contact: sven.fillinger@qbic.uni-tuebingen.de. 

## Documentation

### Bootstrap files with tags
We provide always a bootstrap file (`Singularity`) tagged `.latest` which represents the most resent development status of the container. If you see version tags like `.v1.0`, this means that this is the recipe of a container with a stable version tag.

### How to build the container

Clone the repository:

```bash
git clone https://github.com/qbicsoftware/qbic-singularity-malt.git
cd qbic-singularity-malt
```

Since Singularity 2.4, the build command from file looks like this:

```bash
sudo singularity build myContainer.simg <Singularity file>
```

You can also download the build and ready-to-use container from Singularity Hub:

```bash
singularity pull shub://qbicsoftware/qbic-singularity-malt:latest
...
```

### How to run the container and calling SnpEff
To run the container and calling Diamond you just need to 

```bash
singularity exec myContainer.simg malt [arguments]
singularity exec myContainer.simg diamond help
```

### Image sizes

To keep image sizes as small as possible, we use the Alpine Linux base image (only 5MB in size)! instead of using full-size dependencies that we dont want to have in our environment at all. 
 

## Author

* [Sven Fillinger](https://github.com/sven1103)
