# qbic-singularity-malt

[![https://www.singularity-hub.org/static/img/hosted-singularity--hub-%23e32929.svg](https://www.singularity-hub.org/static/img/hosted-singularity--hub-%23e32929.svg)](https://singularity-hub.org/collections/641)

A Singularity container with MALT, the MEGAN alignment tool (https://ab.inf.uni-tuebingen.de/software/malt), created by [Daniel H. Huson](https://ab.inf.uni-tuebingen.de/people/welcome.html/huson/welcome.html). 
   
For further information or help reffering the _container_, please contact: sven.fillinger@qbic.uni-tuebingen.de. 

## Documentation

### Bootstrap files with tags
We provide always a bootstrap file (`Singularity`) tagged `.latest` which represents the most resent development status of the container. If you see version tags like `.v0.4.0`, this means that this is the recipe of a container with a stable version tag of MALT.

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

### How to run the container and calling MALT
To run the malt-run script, you just need to 

```bash
singularity exec myContainer.simg malt-run --help
# or even shorter
singularity run myContainer.simg --help 
# or even more shorter
./myContainer.simg --help
```

## Author

* [Sven Fillinger](https://github.com/sven1103)
