# Dataprocessing Snakemake Assignments
**Bio-Informatics Year 3, Period 11 (2022-2023)**

Learning how to perform high-performance bioinformatics data analysis workflows using the snakemake tool and computer clustering.


## About the course assignments
The course supplies a Gitbook with theory about snakemake, analysis workflows, types of (input-)data, external scripts, scheduling and logging.
These are supplied in the form of 5 tutorial chapters with an exercise per tutorial, so every aspect of the analysis workflow has been walked through.

After finishing the tutorial exercises the final assignment needs to be done where an actual pipeline needs to be created. 
This can be done by converting an already existing pipeline to a *snakemake* pipeline or by creating a pipeline from scratch for an article of choice.

The exercises/final assignment all have their own subdirectory in this repository, they all have a snakemake pipeline structure including an own readme.


## Repository file structure
```
Dataprocessing-Snakemake-Assignments
├── .gitignore
├── environment.yml
├── LICENSE
├── README.md
├── Exercise01
│   └── *
├── Exercise02
│   └── *
├── Exercise03
│   └── *
├── Exercise04
│   └── *
├── Exercise05
│   └── *
└── Final-Assignment
    └── *
```


## Installation
This project can only be run on a Unix-like system (Linux/macOS) and not on Windows, the reason for this is that the dependency Snakemake uses some packages that are not available for Windows.

### Conda/Mambaforge
To manage the virtual environment and dependencies the [Conda](https://conda.io/)-based Python3 distribution [Mambaforge](https://github.com/conda-forge/miniforge#mambaforge) is used.
Mambaforge provides the required Python and Conda commands, but also includes Mamba, an extremely fast and robust replacement for the Conda package manager. 
Since the default conda solver is large, slow and sometimes has issues with selecting the latest package releases.

Download the latest installer script of Mambaforge for your OS from https://github.com/conda-forge/miniforge#mambaforge and follow the instructions listed there to install it.

### Create environment
The next thing needing to be done before being able to use the pipelines is to create the environment with all the required dependencies. 
This is easily done using Mamba and the `environment.yml` file included in this repository.

Open a terminal and ensure your terminal has the base mamba environment activated with
```bash
mamba activate base
```
Make sure the working directory is the root of this repository and then simply use the following command to create the environment:
```bash
mamba env create --file environment.yml
```
This will name the environment `dataprocessing`, if desired it can be given another name by adding `--name your-desired-name`.


## Usage
To run a workflow/pipeline open a terminal with the working directory of the pipeline you want to run.  
Activate the environment by running the following command (if your environment is named differently replace `dataprocessing` with that name):
```bash
mamba activate dataprocessing
```
After the environment is activated the pipeline can normally be run by simply invoking snakemake:
```bash
snakemake
```
To be sure a pipeline can be run without any other setup and for more information read the readme of that pipeline.


## Useful links  
* [Course Gitbook](https://fennaf.gitbook.io/bfvh4dsp1/)  
* [Snakemake documentation](https://snakemake.readthedocs.io/en/latest)  
* [Conda documentation](https://docs.conda.io/projects/conda/en/latest)  


## Contact
For support or any other questions, do not hesitate to contact me at v.k.talen@st.hanze.nl
