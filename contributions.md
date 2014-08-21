# tags
```
FEAT: Feature
ENH: Enhancement
BUG: Bug
DOC: Documentation
TST: Test
BLD: Build
PERF: Performance
CLN: Cleanup
SEC: Security
```
-- adapted from [pandas/CONTRIBUTING.md](https://github.com/pydata/pandas/blob/master/CONTRIBUTING.md)


# code

## bootstrap
https://github.com/twbs/bootstrap

- [X] *ENH: Add WAI-ARIA roles to examples/theme/index.html (document, main)* https://github.com/twbs/bootstrap/pull/12228


## celery

- [x] *BLD: Use console_scripts entry_points in the setup.py file* https://github.com/celery/celery/commit/cf2148e90


## fixture
https://github.com/fixture-py/fixture

- [X] *Google Datastore (String)ListProperty* https://code.google.com/p/fixture/issues/detail?id=36


## ipython
https://github.com/ipython/ipython

- [X] *Allow passing extra arguments to iptest through for nose* https://github.com/ipython/ipython/pull/4242


### nbviewer
https://github.com/ipython/nbviewer

- [X] *ENH: Redirect github blob URLs to raw.github URLs* https://github.com/ipython/nbviewer/pull/118


### pycon 2014 job survey analysis
https://github.com/briandailey/pycon-2014-job-fair

- [X] *Add ipynb crosstab and chart*: https://github.com/briandailey/pycon-2014-job-fair/pull/8
- [X] *Updated README.md paths, matplotlib fonts, added a Makefile* https://github.com/briandailey/pycon-2014-job-fair/pull/10


### version_information
https://github.com/jrjohansson/version_information

- [X] *Updated version_information.py: Escape JSON, HTMl, and LaTeX version strings* https://github.com/jrjohansson/version_information/pull/2
- [X] *Added check for pkg_resources version and extended `__doc__`* https://github.com/jrjohansson/version_information/pull/3


## pandas
https://github.com/pydata/pandas

- [ ] *ENH: Linked Datasets (RDF)*  https://github.com/pydata/pandas/issues/3402
- [X] *PERF: generators in dataframe.from_records* https://github.com/pydata/pandas/issues/6700
- [X] *DOC: CONTRIBUTING.md: Gold plating: syntax, punctuation, Markdown* https://github.com/pydata/pandas/commit/372226c



## pyramid
https://github.com/Pylons/pyramid

- [X] *DOC: XSS in quicktour/views/views.py* https://github.com/Pylons/pyramid/issues/1294
- [X] *DOC: Add cgi.escape to quick_tour/views/views.py (Fixes #1294)* https://github.com/Pylons/pyramid/commit/f1f35b7
- [X] *DOC: Response.content_type defaults to text/html (#1181)* https://github.com/Pylons/pyramid/pull/1295


## python
### conda
https://github.com/conda/conda

- [ ] *ENH: Mirroring/caching support*  https://github.com/conda/conda/issues/414


### cpython
http://hg.python.org/cpython

* [X] *ENH: random.shuffle could be faster* (rejected) http://bugs.python.org/issue18511


### pip

* [ ] *Implement "hook" support for package signature verification* https://github.com/pypa/pip/issues/1035#issuecomment-20656810
* [ ] *option to confirm expected package hashes when installing* (`requirements.lock`) https://github.com/pypa/pip/issues/1175#issuecomment-39012189


### richard
https://github.com/willkg/richard/

- [X] *Add Schema.org VideoObject RDFa metadata* https://github.com/willkg/richard/pull/213


## reddit
https://github.com/westurner/redem

- [ ] https://westurner.github.io/redditlog/
- [ ] https://github.com/westurner/redditlog


## salt
https://github.com/saltstack/salt

- [X] *DOC: dockerio state: code-block docstring syntax* https://github.com/saltstack/salt/pull/9292
- [X] *DOC: dockerio module: docs syntax and formatting* https://github.com/saltstack/salt/pull/9294
- [ ] *ENH: Read Pillar files into OrderedDict to preserve source order*  https://github.com/saltstack/salt/issues/12161
- [X] *DOC: Update GitFS documentation (syntax, links)* https://github.com/saltstack/salt/pull/12181
- [X] *BUG, ENH, PERF: Debian/Ubuntu network configuration* https://github.com/saltstack/salt/issues/12216
- [ ] *Formula dependency management*  https://github.com/saltstack/salt/issues/12179
- [ ] *ENH: GPG signatures, branch-environment map (GitFS/HgFS workflow)*  https://github.com/saltstack/salt/issues/12183


### apt-formula
https://github.com/saltstack-formulas/apt-formula

- [X] *DOC: Use full state names; add RST formatting* https://github.com/saltstack-formulas/apt-formula/pull/5
- [X] *ENH: Add apt.transports.https and apt.transports.debtorrent* https://github.com/saltstack-formulas/apt-formula/pull/6
- [X] *ENH: Add apt.ppa for pkg:python-software-properties (add-apt-repository)* https://github.com/saltstack-formulas/apt-formula/pull/7


### dnsmasq-formula
https://github.com/saltstack-formulas/dnsmasq-formula

- [X] *ENH: Add dnsmasq.absent (pkg, service)* https://github.com/saltstack-formulas/dnsmasq-formula/pull/4
- [X] *DOC: Update README.rst: formatting, Available states* https://github.com/saltstack-formulas/dnsmasq-formula/pull/5


### nginx-formula
https://github.com/saltstack-formulas/nginx-formula

- [X] *ENH: Add install_from_ppa pillar setting and PPA pkgrepo* https://github.com/saltstack-formulas/nginx-formula/pull/42
- [X] *BUG: pkgrepo.absent, pkgrepo:watch_in(pkg), install_from_ppa* https://github.com/saltstack-formulas/nginx-formula/pull/44


### openssh-formula
https://github.com/saltstack-formulas/openssh-formula

- [X] *ENH: Add a UseDNS option* https://github.com/saltstack-formulas/openssh-formula/pull/13


### salt-formula
https://github.com/saltstack-formulas/salt-formula

- [X] *BUG: Fix for nested [file|pillar]_roots in minion tmp* https://github.com/saltstack-formulas/salt-formula/pull/42


## seaborn
https://github.com/mwaskom/seaborn

- [ ] *Add Arial and Liberation Sans to mpl.rcParams["font.sans-serif"]* https://github.com/mwaskom/seaborn/pull/171

## sphinx
https://bitbucket.org/birkenfeld/sphinx

- [X] *Added WAI-ARIA roles to themes (document, banner, navigation, main, contentinfo, note, search)* https://bitbucket.org/birkenfeld/sphinx/pull-request/204/added-wai-aria-roles-to-themes-document/diff
- [X] *apidoc: Add a -M option to put module documentation before submodule documentation* https://bitbucket.org/birkenfeld/sphinx/pull-request/236/1456-apidoc-add-a-m-option-to-put-module/diff


## sphinxjp.themes.basicstrap
https://github.com/tell-k/sphinxjp.themes.basicstrap

- [X] *Added WAI-ARIA roles to layout, search, searchbox (document, navigation, banner, main, contentinfo)* https://github.com/tell-k/sphinxjp.themes.basicstrap/pull/7


## sphinx_rtd_theme
https://github.com/snide/sphinx_rtd_theme

- [X] *Added WAI-ARIA roles (document, navigation, main, note, contentinfo, search)* https://github.com/snide/sphinx_rtd_theme/pull/86


## readthedocs.org
https://github.com/rtfd/readthedocs.org

- [X] *Added WAI-ARIA roles (document, navigation, main, note, contentinfo, search)* https://github.com/snide/sphinx_rtd_theme/pull/86


## tinkerer
https://github.com/vladris/tinkerer

- [X] *Added WAI-ARIA roles to themes (document, banner, navigation, main, and contentinfo)* https://github.com/vladris/tinkerer/pull/43


## turses
https://github.com/alejandrogomez/turses

- [X] *Inverted configuration keybindings to make reverse lookups faster* https://github.com/alejandrogomez/turses/pull/172
- [X] *ENH: Add mouse scroll wheel support (#165)* https://github.com/alejandrogomez/turses/pull/171


## warehouse
https://github.com/pypa/warehouse

- [X] *Updated tests/conftest.py: add fixed IPv4 127.0.0.1 and specify /tmp as socket directory (for Ubuntu 12.04 LTS default config)* https://github.com/pypa/warehouse/pull/263


# docs


## datasciencemasters
https://github.com/datasciencemasters/go/

- [X] *Added sklearn, statsmodels, Rdatasets, and mldata.org dataset resources* https://github.com/datasciencemasters/go/pull/28
- [X] *Added links to Python Tutorials, Scipy-lectures, Anaconda, Canopy, and fixed IPython capitalization* https://github.com/datasciencemasters/go/pull/29

## opsschool
https://github.com/opsschool/curriculum

- [ ]

## schema-org-rdf
https://github.com/mhausenblas/schema-org-rdf

- [X] *Added links to RDFa 1.1 lite and HTML versions* https://github.com/mhausenblas/schema-org-rdf/pull/49

## scientific-python-lectures
https://github.com/jrjohansson/scientific-python-lectures

- [X] *Updated Lecture-4-Matplotlib.ipynb: Syntax, FFMpeg workaround, clarification* https://github.com/jrjohansson/scientific-python-lectures/pull/12


## scipy-lecture-notes
https://github.com/scipy-lectures/scipy-lecture-notes

- [X] *Showing the effects of rounding as in the documentation for `numpy.around`* https://github.com/scipy-lectures/scipy-lecture-notes/pull/31
- [X] *Update README.rst: github.com -> github.io* https://github.com/scipy-lectures/scipy-lecture-notes/pull/95


# awesome

- [X] https://github.com/bayandin/awesome-awesomeness
- [X] https://github.com/onurakpolat/awesome-bigdata
- [X] https://github.com/josephmisiti/awesome-machine-learning 
- [X] https://github.com/vinta/awesome-python
- [ ] https://github.com/kahun/awesome-sysadmin
- [X] https://github.com/dypsilon/frontend-dev-bookmarks
- [X] https://github.com/bento-io/collection
- [X] https://github.com/samsquire/ideas