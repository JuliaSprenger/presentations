---
author: PhD Defense<br><br>Julia Sprenger<br><br> <div style="margin-top:100px; position:relative; float:right;"> ![](material/logos/fzj_mod.svg){width=250px .left}![](material/logos/rwth.svg){width=200px .left}</div><br><br><br>
title: <small>Tools and Workflows for Data & Metadata Management of Complex Experiments </small>
subtitle: <tiny>Building a Foundation for Reproducible & Collaborative Analysis in the Neurosciences</tiny>
date: 14 Feb 2020
css: slides.css

---

# Introduction

## Neuroscience

  Image of a neuron, 1912

  ![](material/pyramidal_neuron_blue.png){width=70%}

  <tiny>Figure adapted from ___Brain and spinal cord - manual for the study of the morphology and fibre tracts of the central nervous system (1912) Dr.med. Emil Villinger___</tiny>

## But what does this tell us?

  ![](material/cortex_blue.png){width=70%}

  <tiny>Figure adapted from ___Brain and spinal cord - manual for the study of the morphology and fibre tracts of the central nervous system (1912) Dr.med. Emil Villinger___</tiny>

## Additional information is required

### Recording data

  ![](material/cortex_blue.png){width=60% .left}

### Metadata

  >* date and time
  * brain area
  * subject
  * preparation technique
  * visualization techniquec

  . . .

  Additional Metadata

  >* experimenter
  * temperature
  * experimental notes, etc

  . . .

  Additional data modalities

  <div style="margin-left:-600px">

  >* electric activity of neurons
  * connectivity between cells, etc

  </div>

## Growing importance of reproducibility & collaboration

 Fraction of publications relating to reproducibility and collaboration
  ![](material/trends.svg){width=70%}
  <tiny> based on data from [Corlan (2004)](http://dan.corlan.net/medline-trend.html) and [PubMed](https://www.ncbi.nlm.nih.gov/pubmed/) </tiny>

## Overview — projects & publications

### Data publication
  >  **Massively parallel multi-electrode recordings of macaque motor cortex during an instructed delayed reach-to-grasp task**<br>
  >  Brochier, T., Zehl, L., Hao, Y., Duret, M., *Sprenger, J.*, Denker, M., Grün, S., Riehle, A., 2018. Scientific Data 5, 180055. [](https://doi.org/10.1038/sdata.2018.55)

### **The _odMLtables_ package**

  > **odMLtables: A user-friendly approach for managing metadata of neurophysiological experiments** <br>
  > *Sprenger, J.*, Zehl, L., Pick, J., Sonntag, M., Grewe, J., Wachtler, T., Grün, S., Denker, M., 2019. Front. Neuroinform. 13. [](https://doi.org/10.3389/fninf.2019.00062)

### **The _Neo_ package**

  - open source, community based Python package
  - standardized representation of electrophysiological data
  - interfacing to numerous proprietary and open source formats

# Neuroscience today

## A recent example — _Brochier et al. 2018_

  ![](material/scidata_experiment_simple.svg){width=45% .left}

### Overview

  * 96 recording electrodes
  * sampling rate 30kHz
  * online  & offline signal processing
  * custom recording setup
  * ~ 10k metadata values per session

  * proprietary recording devices & formats
  * ~ 5GB data per session

## Requirements for modern neuroscience

There is need for

  - comprehensive metadata organization → odML, *odMLtables*
  - comprehensive data organization → *Neo*
  - systematic organization of data & metadata processes → *workflow management systems*

# Metadata Management

## open metaData Markup Language — odML

  ![](material/odml.png){width=45% .left}

  * hierarchical metadata structure
  * generic objects
  * human & machine readable
  * limited support for manual interaction

  * needs to be generated based <br> on metadata source files & *manual notes*

## ![](material/logos/odMLtables.png){width=10% .left} </t> odMLtables

  * conversion between tabular metadata structures and odML
  * generic spreadsheet software can be used for metadata collection
  * additional utility functions

  ![](material/odmltables_usage_edit.svg)

## Graphical user interface

  ![](material/Screenshot.png){width=40% .left}

  * easy access to the _odML_ format <br> also for non-programmers
  * 5 main functionalities available <br> as `wizard` dialogs for step-wise configuration <br> of odMLtables function
  * saving of configuration <br> settings for repeated use
  * wizards are linked in _odML-ui_ <br> for simplified accessiblity

# Data Management

## ![](material/logos/neo.svg){width=15%}

  ![](material/neo_ios_and_tools.svg){width=45% .left}

### Features

  * generic, standardized data <br> representation for electrophysiological <br> data
  * basis for higher level data <br> processing tools
  * interface to >30 proprietary <br> & open data formats

## ![](material/logos/neo.svg){width=15%}

  ![](material/neo_schema.svg){width=50% .right}

### Features

  * object oriented representation
    * data objects
    * container objects
  * generic structure
  * custom names &  annotations
  * utility functions


### Recent updates

  * data related annotations
  * interface to  additional formats
  * extended utilities
  * simplification of  object structure
  * performance improvements and refactoring

# Data & Metadata Management in Practice

## _Brochier et al. 2018_ — The metadata concept  

  ![](material/scidata_odMLgeneration_diagram_0.png){width=50% .right}

### Metadata pipeline

  * multiple, diverse source files
  * hierarchical metadata collection
  * scripted aggregation of metadata
    1. generation of hierarchical <br> structure
    2. enrichment with metadata

## _Brochier et al. 2018_ — The metadata concept

  ![](material/scidata_odMLgeneration_diagram.png){width=50% .right}

### Issues

  * *monolithic, linear compilation script*
  * structure and content are not <br> completely independent <br>
    → *convoluted generation* and <br> enrichment process
  * requires manual inspection <br> of output for *status tracking*
  * compilation mechanism is <br> obscured in scripts
  * *reuse* in other context requires <br> extended adjustments
  * separate storage of compiled <br> metadata and original data files

. . .

  **Solutions**

  * *Nix* format (*Neo*) can capture metadata and data
  * *Workflow management systems* for organization data and metadata processing


# Workflows

## Workflow concept

  ![](material/workflow_concept_1.svg){width=30% .left}

  * modular processing steps (rules)
  * defined input and output files

## Workflow concept

  ![](material/workflow_concept_2.svg){width=30% .left}

  * modular processing steps (rules)
  * defined input and output files
  * change propagation
  * relation tracking & visualization

## Workflows in science

### From data recording to reproducible publications using snakemake ![](material/logos/snakemake.svg){width=8% .right}

  ![](material/global_picture_workflow.png){width=50% .left}

  * visualization of dependencies <br> and execution status
  * portable and extendable via <br> via modular approach
  * combined data & metadata packaging <br> using *Nix*
  * enables automatized provenance tracking on file level


## Workflow implementation

  ![](material/rulegraph_colored.svg){width=50% .left}

### Advantages ![](material/logos/snakemake.svg){width=8% .right}

  * categorization of rules based <br> on application level
  * separation of generic and <br> project specific rules
  * parallelization capabilities
  * explicit dependency handling
  * flexibly extendable
  * no separation of metadata <br> structure & content
  * selective, automated execution upon <br> change in source file

# Summary & Outlook

## Summary



  * _Brochier et al. 2018_ demonstrates that new tools & methods are needed for comprehensive data and metadata handling in the neurosciences
  * _odMltables_ facilitates the standardized metadata collection in laboratory environments
  * _Neo_ provides a extensive conversion capabilities for proprietary & open electrophysiological formats & forms a standardized data representation for further data processing
  * _workflow management systems_ are a suitable approach for comprehensive metadata management for complex experiments & a basis for reproducible science

## Outlook
  * integration of *odMLtables* functionality into _odML_ package
  * continuation of *Neo* development for extended support of formats, better user friendliness & improved performance
  * implementation of workflow on a larger scale using cluster computing and remote data files
  * application of workflow concept in different projects
  * integration with larger frameworks, e.g. HBP infrastructures



## Thank you!

  ![](material/logos/snakemake.svg){height=80px}
  ![](material/logos/odml.png){height=80px}
  ![](material/logos/neo.svg){height=80px}
  ![](material/logos/elephant.png){height=80px}
  ![](material/logos/odMLtables.png){height=80px}
  ![](material/logos/nix_logo.png){height=80px}
  ![](material/logos/gin.svg){height=80px}
  ![](material/logos/python.svg){height=80px}
  ![](material/logos/matplotlib_logo.svg){height=80px}
  ![](material/logos/jupyter.png){height=80px}

  ![](material/INM-6.jpg){width=100%}

# Additional slides

## Reach2Grasp Metadata aggregation

  ![](material/scidata_reachgraspio_diagram.png){width=60%}


## Overview - Involved Projects & Publications

### Data publication

  * publication of two complex neuroscientific datasets
  * based on semi-automatic metadata collection organization

### **The _odMLtables_ package**

  * open source tool for facilitated metadata collection in the laboratory

### **The _Neo_ package**

  - community based Python package
  - standardized representation of electrophysiological data
  - interfacing to numerous proprietary and open source formats


## ![](material/logos/neo.svg){width=15%}

### Recent development

  * support of new formats
    * Neuralynx
    * latest Blackrock version
    * Nix
  * unification of reader API
  * simplification of object structure
  * data linked custom annotations
  * extension of utility functionality

### Outlook

  * improvements of object structure
    * replacement of ambiguous objects
    * shift from graph to hierarchical structure
  * integration with related formats (EEG, Imaging)
  * integration with simulation software (nest)


## Workflow management system

  General requirements

  * no additional computational overhead
  * no expert knowledge required
  * standalone
  * visualizable
  * easy to debug
  * actively supported
  * open source

. . .

  Project specific requirements

  * support Python
  * good integration
  * flexibility (bash support)
  * support HPC

## Comparison R2G & V4A

  ![](material/discussion_odml_build_comparison.svg)

## odMLtables mapping

  ![](material/hierarchy_table_mapping.svg)
