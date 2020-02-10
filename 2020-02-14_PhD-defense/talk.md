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

  Figure from `Brain and spinal cord - manual for the study of the morphology and fibre tracts of the central nervous system (1912) Dr.med. Emil Villinger`

## But what does this tell us?

  ![](material/cortex.png){width=80%}

  Figure from `Brain and spinal cord - manual for the study of the morphology and fibre tracts of the central nervous system (1912) Dr.med. Emil Villinger`

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

  >* experimenter
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

## A recent example _Brochier et al. 2018_

  ![](material/scidata_experiment.svg){width=55% .left}

### Overview

  * 96 high sampling recording electrodes
  * proprietary recording devices
  * custom recording setup
  * ~ 10,000 metadata values per session


## The metadata concept

  ![](material/scidata_odMLgeneration_diagram_0.png){width=50% .right}

  * multiple, diverse source files
  * hierarchical metadata collection
  * scripted aggregation of metadata
    1. generation of hierarchical structure
    2. enrichment with metadata

## The metadata concept

  ![](material/scidata_odMLgeneration_diagram.png){width=50% .right}

   * structure and content are not completely independent
  * convoluted generation and enrichment process
  * interdependent scripts and requirement for manual inspection & tracking


## Conclusions

  - Facilitate metadata collection for experimentalists
  - Make metadata acquisition & handling more reproducible & transferable

# odMLtables

## ![](material/logos/odMLtables.png){width=10% .left} </t> odMLtables

  ![](material/odmltables_usage.png)

## Graphical User Interface

  ![](material/Screenshot.png)

# Neo

## ![](material/logos/neo.svg){width=10% .left}

  ![](material/neo07_schema.svg){width=45% .left}
  ![](material/neo_ios_and_tools.pdf){width=45% .right}



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


# Summary & Conclusion

##

  * new tools & methods are needed for comprehensive data and metadata handling in the Neurosciences
  * odMltables facilitates the standardized metadata collection in laboratory environments
  * Neo provides a extensive conversion capabilities for proprietary & open electrophysiological formats & forms a standardized data representation for further data processing
  * workflow management systems are a suitable approach for comprehensive metadata management for complex experiments & a basis for reproducible science

  *



## Thank you!

  ![](material/logos/elephant.png)
  ![](material/logos/gin.svg){width=20%}
  ![](material/logos/neo.svg){width=30%}
  ![](material/logos/odMLtables.png){width=15%}
  ![](material/logos/snakemake.svg)
  ![](material/logos/jupyter.png){width=10%}
  ![](material/logos/matplotlib_logo.svg){width=20%}
  ![](material/logos/nix_logo.png)
  ![](material/logos/odml.png){width=10%}
  ![](material/logos/python.svg)

# Additional slides

## Reach2Grasp Metadata aggregation

  ![](material/scidata_reachgraspio_diagram.png)

## Workflow outlook

  ![](material/global_picture_workflow.png)


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
