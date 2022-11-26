---
author: Brainhack Marseille<br><br>Julia Sprenger<br><br> <div style="margin-top:100px; position:relative; float:right;"> ![](material/INT_logo.png){width=220px .left}</div><div style="margin-top:100px; position:relative; float:right;">![](material/logo_brainhack_blanc.jpg){width=550px .left}</div><br><br><br>
title: Advanced Python ![](material/python.svg){height=80px}
subtitle: <tiny>Follow the slides at [https://tinyurl.com/BHMPythonAdvanced](https://tinyurl.com/BHMPythonAdvanced)</tiny>
date: 28 November 2022
css: slides.css

---

# What is advanced in Python?

## Using the right tool for the job
 - Integrated Python modules
 - Scientific Python modules
 - Tools around Python
 - Other resources

# Integrated Python modules

## pathlib
### System independent path handling in a single object since Python 3.4

previous `os.path` implementation

```python
from os.path import join, expanduser
join(expanduser('~') , 'folder_name', 'filename.csv')
```

new `pathlib` implementation

```python
from pathlib import Path
Path.home() / 'folder_name' / 'filename.csv'
```

other `Path` features for path dissection

```python
p = Path('/path/filename.suffix')
p.stem # returns 'filename'
p.name # returns 'filename.suffix'
p.suffix # returns '.suffix'
p.parent # returns Path('/path')
p.parents # returns list of all parent Path objects
```

## pathlib

... and many more convenience functions

```python
p.exists() # checks if file or folder exists
p.mkdir(exists_ok=True) # creates folder if it does not exist
p.is_dir() # check if p is a directory path
p.glob(regex) # return sub files and folders based on a regular expression
```

see also the [pathlib documentation](https://docs.python.org/3/library/pathlib.html)

## regular expressions
### highly flexible string matching using the `re` module

- Define patterns to detect in strings
- flexible pattern definition (sets and repetitions of characters, matching words & sentences)

Extract all numbers from a string
```python
string = 'hello 12 hi 89. Howdy 34'
pattern = '\d+'
print(re.findall(pattern, string))
# Output: ['12', '89', '34']
```

Detecting double words in a string
```python
p = re.compile(r'\b(\w+)\s+\1\b')
print(p.search('Paris in the the spring').group())
# Output: `the the`
```




## formatted strings
### Easy string formatting since Python 3.6


```python
event = "Brainhack Marseille"
print(f"Welcome to the {event}!")

# new feature: underscores in numbers to improve readability
time = 480_230_971.234
width = 10
precision = 4
print(f"This course took: {time:{width}.{precision}} μs")
print(f"{time=:{width}.{precision}} μs")
# 'This course took:  4.802e+08 μs'
# 'time=4.802e+08 μs'
```

## typing
### Defining in and output variable types of functions since Python 3.5

```python
def greeting(name: str) -> str:
    return 'Hello ' + name
```

```python
breakpoint() # convenience function to run the Python Debugger (pdb) (python>=3.7)
```

## argparse
### define a command line interface for you python scripts

```python
parser = argparse.ArgumentParser(description='Process some integers.')
parser.add_argument('integers', metavar='N', type=int, nargs='+',
                    help='an integer for the accumulator')
parser.add_argument('--sum', dest='accumulate', action='store_const',
                    const=sum, default=max,
                    help='sum the integers (default: find the max)')

args = parser.parse_args()
```

## dataclass decorator
### Automatically add special (data) methods to your classes since Python 3.7
```python
from dataclasses import dataclass

@dataclass
class InventoryItem:
    """Class for keeping track of an item in inventory."""
    name: str
    unit_price: float
    quantity_on_hand: int = 0

    def total_cost(self) -> float:
        return self.unit_price * self.quantity_on_hand
```

This will automatically add special methods as `__init__()` and `__repr__()` to the class, e.g. like

```python
def __init__(self, name: str, unit_price: float, quantity_on_hand: int = 0):
    self.name = name
    self.unit_price = unit_price
    self.quantity_on_hand = quantity_on_hand
```


## Assignment Expressions
### The walrus operator := (since Python 3.8)
assigning variables on the fly
```python
if (n := len(a)) > 10:
    print(f"List is too long ({n} elements, expected <= 10)")
```

```python
# Loop over fixed length blocks
while (block := f.read(256)) != '':
    process(block)
```

__Try to limit use of the walrus operator to clean cases that reduce complexity and improve readability.__

## Positional Only Arguments
### Detailed \*args and \*\*kwargs specifications

```python
def my_func(a, b, **kwargs):
  pass
```
Here, `kwargs` can not contain the keys 'a' and 'b' as this would cause a `TypeError: my_func() got multiple values for argument 'a'` error.

New parameter syntax with `/` and `*` separates position-only arguments, mixed arguments, and keyword-only arguments.

```python
def my_func(a, b, /, c, d, *, e, f)
```

## Structural Pattern Matching
### `switch` cases for Python (since Python 3.10)

```python
match subject:
    case <pattern_1>:
        <action_1>
    case <pattern_2> | <pattern_3>:
        <action_2>
    case <pattern_4>:
        <action_3>
    case _:
        <action_wildcard>
```

## Useful object representations
Implement ```__repr__()``` for classes to get a print that is optimized for readability
also check `pprint.pprint` for nicer prints of python objects

# Scientific computing packages

## Overview
A lot of Pythons power lies in Packages. For advanced data handling and functionality check out the following packages:

- [NumPy](https://numpy.org/): Efficient data representation & computation based on arrays
- [SciPy](https://scipy.org/): Scientific Python, builds on NumPy
- [SymPy](https://sympy.org): Symbolic Python, algebraic operations
- [Pandas](https://pandas.pydata.org/) Data manipulation
- [Xarray](https://xarray.dev/) Computation with labelled Numpy arrays

With improved performance implementations as

- [Dask](https://www.dask.org) Accelarates & scales Numpy, Pandas, Scikit-Learn ...
  - cloud & hpc, gpu support
- [Modin](https://modin.readthedocs.io) Parallel Pandas, integrates with Dask

## Pandas and Xarray
### Tabular data manipulation

Great for ...

- categorisation
- labelling
- grouping
- selection
- transformation
- visualisation

... of tabular data

## Dask

- implements parallelization of numpy, pandas and many other packages
- scales from single machine to computer cluster
- provides support for remote compute cluster parallelization

## Modin

- multi-threaded implementation of pandas
- avoids pandas `out of memory` issues for larger datasets
- can use different backends: python, dask, ray
- easy to test

```python
# import pandas as pd
import modin.pandas as pd
```

## Know your units
### Physical units in Python

- [Pint](https://pint.readthedocs.io/en/stable/)
- [Quantities](https://python-quantities.readthedocs.io/en/latest/)

```python
# start_time_ms = 1
# time_steps_μs = 1
# sample_time_1_ms = start_time_ms + time_steps_μs / 1000

import quantities as pq
start_time = 1 * pq.ms
time_steps = 1 * pq.us
sample_time_1 = start_time + time_steps
# sample_time = 1.001 ms
```


# Tools around Python

## Profiling

- `timeit` for measuring execution time of small code snippets

- `cprofile` for line-by-line code profiling

```python
import cProfile

with cProfile.Profile() as profiler:
      # code to be profiled
      ...
```

or as a script
```bash
python -m cProfile [-o output_file] [-s sort_order] (-m module | myscript.py)
```
output can be managed with `pstats` for custom sorting and filtering

## More Profiling

profiling visualizer [`runsnakerun`](https://pypi.org/project/RunSnakeRun/) (not maintained?)

profiling to the point: [`kernprof`]() (convenience wrapper of `line_profiler` and `cProfile`)

[`line_profiler`](https://github.com/pyutils/line_profiler) (with gui [`line-profiler-gui 0.2`](https://pypi.org/project/line-profiler-gui/)) works via `@profile` decorator


## Cython
### Writing C(++) code in Python

```python
import numpy as np
def cy_diff(double[::1] x):
    cdef int n = x.size
    cdef double[::1] y = np.zeros(n-1)
    cdef int i
    for i in range(n-1):
        y[i] = x[i+1] - x[i]
    return y
```

- compilation of equivalent C(++) code
- great speedup for frequently run python functions


## Garbage collection

- not recommended as default usage, but can be useful in rare cases

```Python
import gc
gc.collect()
```

## Profiling and optimization
### A word of warning

![](material/xkcd_1205_is_it_worth_the_time.png)

## Linter
### Ensuring consistency and readability of code

- [Pylint](https://www.pylint.org/)
- [flake8](https://flake8.pycqa.org)
- [autopep8](https://pypi.org/project/autopep8/)
- [Black](https://black.readthedocs.io/en/stable/index.html)


## Testing
### Always be sure your code still works

- [unittest](https://docs.python.org/3/library/unittest.html) Python Core Library for code testing
- [doctest](https://docs.python.org/3/library/doctest.html#module-doctest) Python Core Library for documentation testing
- [pytest](https://docs.pytest.org) framework for functional testing


## Easier coding with IDEs
A number of integrated development environments exist. The level of complexity and support can very from basic to fully integrated with other software development tools. Here a list of tools that are commonly used (order by increasing complexity)

 - [Jupyter notebook](https://jupyter.org/install)
 - [Spyder](https://docs.spyder-ide.org/current/installation.html)
 - [Visual Studio Code](https://code.visualstudio.com)
 - [PyCharm](https://www.jetbrains.com/pycharm/)

## Collaborative Coding

- [CodeTogether](https://www.codetogether.com/) interactive collaborative coding, integrates with many IDEs
- [Floobits](https://floobits.com/) interactive collaborative coding, integrates with many IDEs
- [CodeShare](https://codeshare.io/) minimal collaborative online coding platform
- ...

# Other resources

## Python Conferences and Schools

Python Conferences

- [PyData Global](https://pydata.org/global2022/), online, *1 & 2 Dec 2022*, pay what you can afford
- [EuroPython](https://www.europython-society.org), no date yet in 2023

Python Schools

- [Software Carpentries](https://software-carpentry.org/)
- [Advanced Scientific Python](https://aspp.school/wiki/), no date yet in 2023

Other resources

- [Scientific Visualization Cookbook](https://github.com/rougier/scientific-visualization-book) Extensive visualization examples using matplotlib ([pdf](https://hal.inria.fr/hal-03427242/document))
- [Write the docs](https://www.writethedocs.org/) Documentation community


# Additional slides

## dict
### Dictionary order is preserved since Python 3.5

```python
my_dict = {'first': 'A'}
my_dict['second'] = 'B'
my_dict['third'] = '3'

print(" ".join(my_dict.keys()))
# 'A B 3'
```
