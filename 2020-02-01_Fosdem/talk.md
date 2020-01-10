---
author: Julia Sprenger
affiliation: Jülich Research Centre
title: Challenges and opportunities in scientific software development
date: 1 Feb 2020

---

# Scientists
- trying to understand <system A>* better
- running experiments, collecting data, analysis of data, publication of findings

- software has become an essential, but uninvited part of this process

* earth, animal species, molecule, universe, ...

---
# Scientific view onto software

- highest goal: papers / reputation / Nobel price

- scientists wish list:
    - easy/automatic setup, plug & play
    - no maintenance
    - automatic provenance tracking
    - compatibility with all other software

- scientists reality
    - use whatever works
    - minimize time investment
        - depending on budget: use commercial (closed-source) full system solution
    - prevent maintenance by not updating to new versions
    - focus on data, provenance & other metadata are secondary
    - use custom hacky solutions to solve compatibility issues
    - if budget permits: use complete closed-source solution than time-intense open source software solution

    - software as a **tool**



Trust issue
- scientists inherent distrust vs ready made solutions (blackbox & open source!)
-> code readability & documentation!
- short development cycles (duration of phd, )
- open source development methods have hidden educational requirements not covered during studies -> high barrier to enter (version control concept, )
- dedicated, regular tutorials required (more or less easy to implement depending on group size, no awareness of complexity of git as a tool)
- requirement for group standards defined in the first place

- distributed responsibility vs single person maintainer
- software development is hardly planable, because of interruptions <=> industrial software development, fixed development cycles / goals

- lacking awareness of software dying if project finished

- how to advertise / inform in a scientific community?
    - papers?, conferences? education is the key!

- funding is always linked to publications, not software progress or community gain
- large projects are always supported by large consortia (HBP, Cern, )

- dependency to companies / vendor standards / Neo. Vendor locking.

- no reward for software development
- difference: science (everything is open, communication is everything), industry (closed, patent oriented, finance driven)
- open source: entity = person; industry: entity = company

---

# Stages of scientific software

1) custom code for experiment specific task (e.g. )
    - for current use only
    - no documentation
    - no reuse possible
    - not maintainable
    - not shareable

# Stages of scientific software

2) shared code within a small community
    - used by multiple people
    - sparsely documented
    - maintained for the duration of a project
    - reuse would require modifications

# Stages of scientific software

3) globally shared code
    - used in different projects
    - well documented
    - maintained across projects


# Examples of scientific software projects -



-

---

# What can you do?
- make your documentation readable by non-experts
- include an 'installation for dummies'


---

# Additional references
- [Creating slides with pandoc](https://www.chronicle.com/blogs/profhacker/markdown-slideshow-example-pandoc/46683)
- [Example markdown presentation](http://wcm1.web.rice.edu/slides/onlinepub.txt)
- [Using pandoc to create reveal.js slides](https://github.com/jgm/pandoc/wiki/Using-pandoc-to-produce-reveal.js-slides)
- [From markdown to manuscripts](https://kieranhealy.org/blog/archives/2014/01/23/plain-text/)
