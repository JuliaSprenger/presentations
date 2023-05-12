---
author: <div style="margin-top:100px; position:relative; float:center;"> ![](material/PyConDe.jpg){height=400px .center} </div>
title: PyConDE & PyData Berlin 2023
date: 17 - 19 April 2023
css: slides.css

---

# Conference concept

##

![](material/pycon_venue.jpg)

## In Numbers
- 1 venue (Berlin Congress Center)
- 2 session flavours: PyData & PyCon
- 3 days
- 4 keynote presentations
- 5 presentation rooms, 2 workshop rooms
- ~1700 participants
- 100% international, English, inclusive & vegetarian

## Conference setup
- hybrid participation via Discord
- questions / polls via Slido
- no posters!

# News from major Python packages

## [Pandas 2.0](https://pretalx.com/pyconde-pydata-berlin-2023/talk/DB3KC7/) (released 3rd of April 2023)

- Memory management improvement: adding consistency and performance
  - `in-place` argument will be deprecated
  - Pandas operations will use views of data unless shared memory is changed, this will trigger a copy of the data
  - new behaviour can be already tested via opt-in setting: `pd.options.mode.copy-on-write`
  - see also [this](https://jorisvandenbossche.github.io/blog/2022/04/07/pandas-copy-views/) blogpost

## JupyterLab

- A server-free way of running notebooks directly in the browser is in development: [JupyterLite](https://pretalx.com/pyconde-pydata-berlin-2023/talk/FZY9VV/)
- No need for mybinder for demonstration notebooks.
- Limited resources (browser limitation)

- [Voilà](https://voila.readthedocs.io/en/stable/) for rendering Jupyter Notebooks into interactive widgets
- [Voici](https://pypi.org/project/voici/) for rendering Jupyter Notebooks into *self-contained* interactive widgets


# Packages on the rise

## [Apache Arrow](https://pretalx.com/pyconde-pydata-berlin-2023/talk/H7ZCWK/)

__language-independent columnar memory format for flat and hierarchical data, organized for efficient analytic operations__

- pyarrow implementation integrates with [Numpy](https://arrow.apache.org/docs/python/numpy.html) and [Pandas](https://arrow.apache.org/docs/python/pandas.html)
- [Original slides](https://jorisvandenbossche.github.io/talks/2023_PyDataBerlin_Arrow)

## [Polars](https://www.pola.rs/)

- fast DataFrame library
- can handle datasets larger than working memory
- supports Apache Arrow data types

## [PyDantic](https://pydantic.dev/)

- validate input data by using Python classes



## Ecosystem news

- [Overview of Python package tools](https://pretalx.com/pyconde-pydata-berlin-2023/talk/VBP3PE/): Rising project management tool:  [hatch](https://hatch.pypa.io)
- [MemRay](https://pypi.org/project/memray/): very fast Python memory profiler
- [Typing](https://docs.python.org/3/library/typing.html): Converging type hint styles between Python Scala 3 & Rust
- [TOML files](https://toml.io/en/): Converging package configuration scheme between many languages: Go, Scala, ....
- [MicroMamba](https://mamba.readthedocs.io/en/latest/user_guide/micromamba.html) light weight, fast anaconda environment resolution & package installation
- [Orange](https://orangedatamining.com/) Visual programming for analysis and visualization


## Discoveries
### Events
- [PyLadies](https://pyladies.com/):
  - global organization with regional chapters
  - organizes workshops and meetups
  - closest chapter: [Paris](https://pyladies.com/locations/paris/)
- [Python Camps](https://barcamps.eu/pyr2023/)
  - unconference-style coding camps for any level of Python expertise
- [MobProgramming](https://en.wikipedia.org/wiki/Mob_programming)
   - pair programming advanced
   - very fast paced, role switching every 2-5 minutes



## Complete Material
- All conference sessions in the official [schedule](https://pretalx.com/pyconde-pydata-berlin-2023/schedule/)
- All talks are recorded and will be soon available on the [PyConDE youtube channel](https://www.youtube.com/user/PyConDE)
