---
author: PhD defense<br>Julia Sprenger
title: <small>Tools and Workflows for Data & Metadata Management of Complex Experiments </small>
subtitle: <tiny>Building a Foundation for Reproducible & Collaborative Analysis in the Neurosciences</tiny>
date: 14 Feb 2020
css: slides.css

---

# Introduction

## Neuroscience

  ![](material/pyramidal_neuron.png){width=80%}

  <tiny>Figure adapted from ___Brain and spinal cord - manual for the study of the morphology and fibre tracts of the central nervous system (1912) Dr.med. Emil Villinger___</tiny>

## But what does this tell us?

  ![](material/cortex.png){width=80%}

  <tiny>Figure adapted from ___Brain and spinal cord - manual for the study of the morphology and fibre tracts of the central nervous system (1912) Dr.med. Emil Villinger___</tiny>

## Additional information is required

  ![](material/cortex.png){width=60% .left}

  Essential Metadata

  >* date
  * subject
  * brain area
  * preparation technique
  * visualization technique

  . . .

  Additional Metadata

  * experimenter
  * weather / season
  * experimental notes
  * ...


## Growing importance of reproducibility & collaboration

  ![](material/trends.svg){width=80%}

## Overview - Involved Projects & Publications

### Data publication
  >  **Massively parallel multi-electrode recordings of macaque motor cortex during an instructed delayed reach-to-grasp task**<br>
  >  Brochier, T., Zehl, L., Hao, Y., Duret, M., *Sprenger, J.*, Denker, M., Grün, S., Riehle, A., 2018. Scientific Data 5, 180055. [](https://doi.org/10.1038/sdata.2018.55)

### **The _odMLtables_ package**

  > **odMLtables: A user-friendly approach for managing metadata of neurophysiological experiments** <br>
  > *Sprenger, J.*, Zehl, L., Pick, J., Sonntag, M., Grewe, J., Wachtler, T., Grün, S., Denker, M., 2019. Front. Neuroinform. 13. [](https://doi.org/10.3389/fninf.2019.00062)

### **The _Neo_ package**

  - community based Python package
  - standardized representation of electrophysiological data
  - interfacing to numerous proprietary and open source formats


# Neuroscience today

## A recent example — _Brochier et al. 2018_

  ![](material/scidata_experiment.svg){width=55% .left}

### Overview

  * 96 recording electrodes
  * sampling rate 30kHz
  * online  & offline signal processing
  * proprietary recording devices
  * custom recording setup
  * ~ 10k metadata values per session


## The metadata concept

  ![](material/scidata_odMLgeneration_diagram_0.png){width=50% .right}

### Metadata pipeline

  * multiple, diverse source files
  * hierarchical metadata collection
  * scripted aggregation of metadata
    1. generation of hierarchical <br>structure
    2. enrichment with metadata

  ![](material/odml.png){width=45% .left}

## The metadata concept

  ![](material/scidata_odMLgeneration_diagram.png){width=50% .right}

### Issues

  * manual generation of <br> source files is laborious <br> using _odml_ features
  * structure and content are not <br> completely independent <br>
    → convoluted generation and <br> enrichment process
  * requires manual inspection <br> of output for status tracking
  * compilation mechanism is <br> obscured in scripts
  * reuse in other context requires <br> extended adjustments

## Conclusions

There is need for

  - *facilitated metadata collection* for experimentalists
  - *unification* of data and metadata formats
  - improved metadata acquisition & handling in terms of *reproducibility* & *transferability*

# odMLtables

## ![](material/logos/odMLtables.png){width=10% .left} </t> odMLtables

  * conversion between tabular metadata structures and odML
  * generic spreadsheet software can be used for metadata collection
  * additional utility functions

  ![](material/odmltables_usage.png)

## Graphical User Interface

  ![](material/Screenshot.png){width=40% .left}

  * easy access to the _odML_ format <br> also for non-programmers
  * 5 main functionalities available <br> as `wizard` dialogs for step-wise configuration <br> of odMLtables function
  * saving of configuration <br> settings for repeated use
  * wizards are linked in _odML-ui_ <br> for simplified accessiblity

# Neo

## ![](material/logos/neo.svg){width=15%}

  ![](material/neo07_schema.svg){width=90% .left}


## ![](material/logos/neo.svg){width=15%}

  ![](material/neo.svg){width=80%}

### Features

  * generic, standardized data representation for electrophysiological data
  * basis for higher level data processing tools
  * interface to >30 proprietary & open data formats

## ![](material/logos/neo.svg){width=15%}

### Recent development

  * Support of new formats
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


## Workflow Implementation

  ![](material/rulegraph_colored.svg){width=50% .center}
  ![](material/logos/snakemake.svg){width=8% .right}


## Improvements

  * combination of template structure & automatic enrichment
  * modularization
    * separation of generic and project specific aspects
    * reusability in other contexts
  * flexible
  * extendable
  * combined data & metadata
  * facilitated
    - portability
    - parallelisation


# Summary & Outlook

## Summary



  * _Brochier et al. 2018_ demonstrates that new tools & methods are needed for comprehensive data and metadata handling in the neurosciences
  * _odMltables_ facilitates the standardized metadata collection in laboratory environments
  * _Neo_ provides a extensive conversion capabilities for proprietary & open electrophysiological formats & forms a standardized data representation for further data processing
  * _workflow management systems_ are a suitable approach for comprehensive metadata management for complex experiments & a basis for reproducible science

## Outlook
  * integration of *odMLtables* functionality into _odML_ package
  * continuation of *Neo* development for better integration, user friendliness & performance
  * implementation of metadata workflow using cluster computing and remote data files
  * transfer of generic workflow rules to other projects and initialization of public rule collection



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

## Workflow outlook

  ![](material/global_picture_workflow.png){width=60%}


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
