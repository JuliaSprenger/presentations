---
author: PhD defense<br>Julia Sprenger
title: <small>Tools and Workflows for Data & Metadata Management of Complex Experiments </small>
subtitle: <tiny>Building a Foundation for Reproducible & Collaborative Analysis in the Neurosciences</tiny>
date: 14 Feb 2020

---

# Introduction

## Neuroscience

  ![](material/pyramidal_neuron.png){width=80%}

  <tiny>Brain and spinal cord - manual for the study of the morphology and fibre tracts of the central nervous system (1912) Dr.med. Emil Villinger</tiny>

## But what does this tell us?

  ![](material/cortex.png){width=80%}

## Additional information is required

  ![](material/cortex.png){width=50% .left}

  Metadata
    * subject
    * brain area
    * preparation technique
    * visualization technique
. . .
    * experimenter
    * weather / season
    * ...

## The importance of reproducibility & metadata

  ![](material/trends.svg){width=90%}

## Overview - Involved Projects & Publications

  **Massively parallel multi-electrode recordings of macaque motor cortex during an instructed delayed reach-to-grasp task**
  Brochier, T., Zehl, L., Hao, Y., Duret, M., *Sprenger, J.*, Denker, M., Grün, S., Riehle, A., 2018. Scientific Data 5, 180055. [](https://doi.org/10.1038/sdata.2018.55)

  * publication of two complex neuroscientific datasets
  * based on semi-automatic metadata collection organization

  **The _odMLtables_ package**

  **odMLtables: A user-friendly approach for managing metadata of neurophysiological experiments**
  *Sprenger, J.*, Zehl, L., Pick, J., Sonntag, M., Grewe, J., Wachtler, T., Grün, S., Denker, M., 2019. Front. Neuroinform. 13. [](https://doi.org/10.3389/fninf.2019.00062)

  * open source tool for facilitated metadata collection in the laboratory

  **The _Neo_ package**

  - community based Python package
  - standardized representation of electrophysiological data
  - interfacing to numerous proprietary and open source formats


# An example from the Neurosciences

  ![](material/scidata_experiment.svg)

## The metadata concept

  ![](material/scidata_odMLgeneration_diagram.svg){width=60%}

## Conclusions

  - Facilitate metadata collection for experimentalists
  - Make metadata acquisition & handling more reproducible & transferable

# odMLtables ![](material/logos/odMLtables.pdf){width=10% .right}

  ![](material/odmltables_usage.png)

## Graphical User Interface

  ![](material/Screenshot.png)

# Neo ![](material/logos/neo.svg){width=10% .right}



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
  * flexible
  * extendable
  * facilitated
    - portability
    - parallelisation

# Conclusion / Summary
