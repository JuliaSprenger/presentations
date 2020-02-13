---
author: PhD Defense<br><br>Julia Sprenger<br><br> <div style="margin-top:100px; position:relative; float:right;"> ![](material/logos/fzj_mod.svg){width=250px .left}![](material/logos/rwth.svg){width=200px .left}</div><br><br><br>
title: <small>Tools and Workflows for Data & Metadata Management of Complex Experiments </small>
subtitle: <tiny>Building a Foundation for Reproducible & Collaborative Analysis in the Neurosciences</tiny>
date: 14 Feb 2020
css: slides.css

---

# Introduction

## Neuroscientific data - a historic example

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

  >* brain area
  * species
  * date and time
  * preparation technique
  * visualization technique

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

 ![](material/trends.svg){width=60%}

  Figure based on data from [PubMed](https://www.ncbi.nlm.nih.gov/pubmed/) using [Corlan (2004)](http://dan.corlan.net/medline-trend.html).

## Overview — projects & publications

### Data publication ([gin.g-node.org/INT/multielectrode_grasp](https://gin.g-node.org/INT/multielectrode_grasp))
  >  **Massively parallel multi-electrode recordings of macaque motor cortex during an instructed delayed reach-to-grasp task**<br>
  >  Brochier, T., Zehl, L., Hao, Y., Duret, M., *Sprenger, J.*, Denker, M., Grün, S., Riehle, A., 2018. Scientific Data 5, 180055. [](https://doi.org/10.1038/sdata.2018.55)

### **The _odMLtables_ package** ([github.com/inm-6/python-odmltables](https://github.com/inm-6/python-odmltables))

  > **odMLtables: A user-friendly approach for managing metadata of neurophysiological experiments** <br>
  > *Sprenger, J.*, Zehl, L., Pick, J., Sonntag, M., Grewe, J., Wachtler, T., Grün, S., Denker, M., 2019. Front. Neuroinform. 13. [](https://doi.org/10.3389/fninf.2019.00062)

### **The _Neo_ package** ([github.com/neuralensemble/python-neo](https://github.com/neuralensemble/python-neo))

  - open source, community based Python package
  - standardized representation of electrophysiological data
  - interfacing to numerous proprietary and open source formats

## Neuroscience today — _Brochier et al. 2018_

  ![](material/scidata_experiment_simple.svg){width=70%}

  >* ~ 5GB data per session (proprietary formats)
   * ~ 10k metadata values per session (various formats)


## Requirements for modern neuroscience

There is need for

  - comprehensive metadata organization → odML, *odMLtables*
  - comprehensive data organization → *Neo*
  - systematic organization of data & metadata processes → *modular workflow approach*

# Metadata Management

## open metadata Markup Language — odML

  ![](material/odml.svg){width=70%}

<table><tr><td width="50%">
  * hierarchical metadata structure
  * generic objects
  * human & machine readable
</td><td width="50%">
  * limited support for manual interaction
  * needs to be generated based <br> on metadata source files & *manual notes*
  </td></table>

## ![](material/logos/odMLtables.png){width=10% .left} </t> odMLtables

  * conversion between tabular metadata structures and odML
  * generic spreadsheet software can be used for metadata collection
  * additional utility functions

  ![](material/odmltables_usage_edit.svg)

## Graphical user interface

  ![](material/Screenshot.png){width=50% .left}

  <br><br>

  * easy access to the _odML_ format <br> also for non-programmers
  * 5 main functionalities available <br> as `wizard` dialogs for step-wise <br> configuration  of odMLtables function
  * saving of configuration <br> settings for repeated use
  * `wizards` are linked in _odML-ui_ <br> for simplified accessiblity

# Handling of Electrophysiological Data

## ![](material/logos/neo.svg){width=15%}

### Neo as interface
  ![](material/neo_ios_and_tools_0.svg){width=42%}



## ![](material/logos/neo.svg){width=15%}

  ![](material/neo_ios_and_tools.svg){width=45% .right}

### Neo as interface

  <br>
  <br>

  * interface to >30 proprietary <br> & open data formats
  * generic, standardized data <br> representation for electrophysiological <br> data
  * basis for applications and <br> scripts working on the data


## ![](material/logos/neo.svg){width=15%}

### Neo as standardized data representation

  ![](material/neo_schema.svg){width=50% .right}

### Features

  * object oriented representation
    * data objects
    * container objects
  * generic structure
  * support for custom metadata <br> via object names & annotations
  * utility functions

### Recent updates

<div style="float: left; margin-left: 55px;">
  * data related annotations (array annotations)
  * interface to  additional formats (neuralynx, nest, blackrock, nix)
  * extended utilities (trial based slicing, resampling, ...)
  * simplification of  object structure
  * performance improvements and refactoring
</div>

# A Process for Data & Metadata Management

## _Brochier et al. 2018_ — The metadata concept  

  ![](material/scidata_odMLgeneration_diagram_0_ext_0.png){width=60% .right}

### Metadata pipeline

  * scripted aggregation of metadata
    1. generation of hierarchical <br> structure
    2. enrichment with <br> metadata

## _Brochier et al. 2018_ — The metadata concept  

  ![](material/scidata_odMLgeneration_diagram_0_ext_1.png){width=60% .right}

### Metadata pipeline

  * scripted aggregation of metadata
    1. generation of hierarchical <br> structure
    2. enrichment with <br> metadata

## _Brochier et al. 2018_ — The metadata concept  

  ![](material/scidata_odMLgeneration_diagram_0_ext_2.png){width=60% .right}

### Metadata pipeline

  * scripted aggregation of metadata
    1. generation of hierarchical <br> structure
    2. enrichment with <br> metadata
  * multiple, diverse source files

## _Brochier et al. 2018_ — The metadata concept

  ![](material/scidata_odMLgeneration_diagram_ext.png){width=60% .right}

### Issues

  * structure and content are not <br> completely independent <br>
    → *convoluted generation* and <br> enrichment process
  * *monolithic, linear compilation <br> script* <br>
    → obscured compilation <br> mechanism
  * requires manual inspection <br> of output for *status tracking*
  * *reuse* in other context requires <br> extended adjustments
  * *detached* for data and <br> metadata storage

## Improvement of the metadata concept

### Solutions approach

  ![](material/scidata_odMLgeneration_diagram_ext.png){width=30% .right}

**Combination of data and metadata in a single framework** <br>
  → *Nix* format (*Neo*) captures data and metadata
<br><br><br>

**Systematic modularization of the compilation process**

  * less maintenance
  * easier to reuse in other projects
  * improved tracking of compilation process
  * explicit dependencies

→*Workflow management systems* (*snakemake*) for organization of data and metadata processes

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

### From data recording to reproducible publications using workflows

  ![](material/global_picture_workflow_0.png){width=45% .left}

  * visualization of dependencies <br> and execution status
  * portable and extendable via <br> via modular approach
  * combined data & metadata packaging <br> using *Nix*
  * enables automatized provenance <br> tracking on file level

## Workflows in science

### From data recording to reproducible publications using workflows

  ![](material/global_picture_workflow_1.png){width=45% .left}

  * visualization of dependencies <br> and execution status
  * portable and extendable via <br> via modular approach
  * combined data & metadata packaging <br> using *Nix*
  * enables automatized provenance <br> tracking on file level

## Workflows in science

### From data recording to reproducible publications using workflows

  ![](material/global_picture_workflow_2.png){width=45% .left}

  * visualization of dependencies <br> and execution status
  * portable and extendable via <br> via modular approach
  * combined data & metadata packaging <br> using *Nix*
  * enables automatized provenance <br> tracking on file level


## Workflow implementation

  Visualization of snakemake rules ![](material/logos/snakemake.svg){width=4% .left} <br><br>
  ![](material/rulegraph_colored.svg){width=45% .left}

### Advantages

  * categorization of rules based <br> on application level
  * separation of *generic* and <br> project specific rules
  * parallelization capabilities
  * explicit *dependency description* <br> and visualization
  * flexibly *extendable*
  * no separation of metadata <br> structure & content
  * *automatic propagation* of changes

# Summary & Outlook

## Summary

 * Based on our data publication _Brochier et al. 2018_ we identified deficiencies and issues in designing a scalable, portable, generic, rigorous workflow for data and metadata acquisition. Based on this we designed solutions which close these gaps:
  * By providing _odMLtables_ we facilitate the standardized metadata collection in laboratory environments.
  * We contributed major functionality to the _Neo_ package that was lacking in building our acquisition workflow.
  * We devise a portable, modular approach for reproducible data and metadata management based on _workflow management systems_ that scales from experimental data acquisition to data and analysis publication.

## Outlook
  * integration of *odMLtables* functionality into _odML_ package
  * continuation of *Neo* development for extended support of formats, better user friendliness & improved performance
  * implementation of workflows on a larger scale using cluster computing and remote data files
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
