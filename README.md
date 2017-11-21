# qbic-singularity-diamond
A Singularity container for Diamond, an accelerated BLAST compatible local sequence aligner. 
    
_B. Buchfink, Xie C., D. Huson, "Fast and sensitive protein alignment using DIAMOND", Nature Methods 12, 59-60 (2015)._

For information about diamond, please visit: https://github.com/bbuchfink/diamond.

For further information or help reffering the container, please contact: sven.fillinger@qbic.uni-tuebingen.de. 

## Documentation

### Bootstrap files with tags
We provide always a bootstrap file (`Singularity`) tagged `.latest` which represents the most resent development status of the container. If you see version tags like `.v1.0`, this means that this is the recipe of a container with a stable version tag.

### How to build the container

Clone the repository:

```bash
git clone https://github.com/qbicsoftware/qbic-singularity-diamond.git
cd qbic-singularity-diamond
```

Since Singularity 2.4, the build command from file looks like this:

```bash
sudo singularity build myContainer.simg <Singularity file>
```

You can also download the build and ready-to-use container from Singularity Hub:

```bash
singularity pull shub://qbicsoftware/qbic-singularity-diamond:latest
...
```

### How to run the container and calling SnpEff
To run the container and calling Diamond you just need to 

```bash
singularity exec myContainer.simg diamond [arguments]
singularity exec myContainer.simg diamond help
```

### Image sizes

To keep image sizes as small as possible, we use the Alpine Linux base image (only 5MB in size)! instead of using full-size dependencies that we dont want to have in our environment at all. 
 

## Author

* [Sven Fillinger](https://github.com/sven1103)
