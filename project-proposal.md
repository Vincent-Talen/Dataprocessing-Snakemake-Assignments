# Project-proposal Dataprocessing Vincent Talen

## About the chosen project
For the dataprocessing final assignment I will be using the same project I am doing for the practical project of the Advanced Datamining minor.
This project is by request of the Dutch Royal GD, also known as the Animal Health Service, and our contact is Corneel Vermeulen from the Epidemiology department.
They are a leading organisation in animal health and animal production, they have state-of-the-art veterinary laboratories and research facilities 
that combined with their veterinary knowledge and expertise are used to support their customers.

One of the things GD Royal does is testing farmers' livestock for deceases and pathogens. 
Sometimes when an animal has been diagnosed with a pathogen it is desired to further identify which strain of that pathogen is actually present. 
This aids in finding the source of an outbreak and what steps should be taken to contain it and prevent new outbreaks.


## The existing pipeline
At the moment they have created a pipeline that can type the strain of PRRSv a pig is infected with, but they want to expand the pipeline so multiple germs can be typed with it.
If possible they would also like a GUI that makes using the pipeline easier and/or plausible at all for researchers in the lab without knowledge of the command line.

The samples the pipeline needs to run on and type already are confirmed to be of a certain germ. 
First they need to be mapped against a reference panel of centroid sequences, the mappings against all centroids is counted and the top centroid selected.
All the sample reads are mapped again but now only against the top centroid, 200 forward and 200 reverse reads are randomly selected and with these the variants are called.
The variant calls are then used to create a polished consensus sequence which is then typed against known vaccine strains.
They need to have an identity of 98% or greater to be typed as a known strain, if not they are classified as a wild strain.
In the end a report is created for the customer where the results can easily be interpreted.


## Plans for improving and adapting the pipeline
The pipeline was created whilst learning Snakemake without prior knowledge, causing the pipeline to not be implemented correctly or efficiently in places.
All the scripts do not have clear/good style convention and do not utilise snakemake functionalities.
Rules are written to achieve just the minimum required functionality and environments are unnecessarily used for some.

My plans are to greatly improve the code style, to implement good usage of a configuration file where input and output directories can be specified.
Snakemake logging and messages will be implemented and a start will be made on expanding the pipeline, so it can type multiple germs.
A Conda environment will be made with dependencies listed and combined with an extensive README cause the pipeline to be easily reproducible.


## Original code and data availability
The original code can be found under the ["Original Legacy Code" release in the GitHub repository](https://github.com/Vincent-Talen/Minor-Advanced-Datamining/releases/tag/v0.0.1-alpha).
Test data is located on the bioinformatics network only available for people of the project group, but during the oral exam the pipeline can be shown to run on the data.
