
Subject: re: {presentation subject}
Presentation:

Why I, as an Omaha Python community member,
spent the time to put this together:

- Parallels with other projects
  - https://github.com/westurner/nbmeta/issues/1
    - Generate, Display, and Embed Structured Data
      as {RDFa, JSONLD, }
      within Jupyter notebooks (by creating objects
      with metadata and a ``_repr_html_()``,)
    - [o] Create Python objects w/ ``_repr_html_()``
    - [ ] Validate meta schema {schema.org, schema.jupyter.org, dcterms}
    - [ ] Create Jupyter Extension(s)
      - [ ] grep out Microdata, RDFa, JSONLD blocks
        - [ ] ``<script id="name_jsondl" type="application/ld+json"">``
        - [ ] ``vocab=``, 
        - [ ] https://git.io/vDHOC OSDS
      - [ ] Server Extension:
        - [ ] RESTful Tornado handlers
        - [ ] jupyter extension template / examples:
          - [ ] TODO
      - [ ] Client Extension
        - [o] ipywidgets instead/to start with
        - [ ] js
        - [ ] show/view/collect {Metadata}
        - [ ] validate {metadata}
- https://youtu.be/qWSovC2-yM4
  - https://westurner.github.io/opengov/us/ne/#what-about-creating-computer-games
- +1 for Open Source
- What is SML?
- I like LEGOS, too.
- jupyter notebook + {lego models} + { leocad, blender,} would be really cool.


# Bricklayer
- | Homepage: https://bricklayer.org/

- "Bricklayer: An Authentic Introduction to the Functional Programming
  Language SML" https://arxiv.org/abs/1412.4881


  > Bricklayer is an API, written in SML, that provides a set of
  > abstractions for creating LEGO® artifacts which can be viewed using
  > LEGO Digital Designer.
  >
  > The goal of Bricklayer is to create
  > a problem space (i.e., a set of LEGO artifacts) that is
  > accessible and engaging to programmers (especially novice programmers)
  > while providing an authentic introduction to the functional programming
  > language SML.
  >
  > The long term goal of Bricklayer is to provide a comprehensive and
  > flexible set of modules that enable instruction to be tailored to
  > the needs of a wide range of students. In particular, we hope to see
  > Bricklayer used at all age levels where coding is taught (e.g., 8
  > years on up, including introductory university courses).


# Goals
Teach coding, pattern based reasoning, spatial reasoning (3D), rotation

# Products

## Content
- ``#OER``: Open Educational Resource
- https://bricklayerdotorg.wordpress.com/level-1-document/
- https://bricklayerdotorg.wordpress.com/level-2-document/
- https://bricklayerdotorg.wordpress.com/level-3-document/
- https://bricklayerdotorg.wordpress.com/level-4-document/
- https://bricklayerdotorg.wordpress.com/level-5-document/
- http://wintercoding.com/vitruvia/
  - https://bricklayerdotorg.wordpress.com/vitruvia/
    - http://wintercoding.com/BricklayerWeb/Vitruvia/

## Website
- [x] WordPress (PHP, SQL)
- [x] Exercises as WordPress Posts
  - https://github.com/Pybonacci/jupy2wp
    - Jupyter Notebook -> XMLRPC -> WordPress
  - https://pythonandr.com/2016/07/18/sharing-ipython-jupyter-notebooks-via-wordpress/
    - embed gistname.ipynb from gist.github.com
- [?] Src? ... "Download" (view-source: ctrl-f 'github')
- [?] Static Pages?
  - https://bricklayer.bitbucket.org/
  - https://bricklayer.github.io/
  - https://bricklayer.github.io/
- [?] Docs? (sphinx-quickstart, cookiecutter-pypackage?)
- [?] UGC: User Generated Content (Collections of Resources)
  - Create a Pull Request to add [YAML] > JSONLD
  - Create a form
    - WebForm + Uplod
  - track usernames
  - moderate/approve posts
    - Q&A Question/Answer/Comment upvote/downvote (+karma)
    - github/reddit/reddit (+karma)



## Code

### bricklayer
- | Src: 
- | Download:
- [SML/NJS](#smlnj) ([SML](#SML): Standard ML)
- Input: name.bl : A Bricklayer program
- Output: name.ldr : [LDraw](#ldraw)

### virtruvia
- | Docs: http://wintercoding.com/BricklayerWeb/Vitruvia/
- | Src: BitBucket: 
- | Src: view-source:http://wintercoding.com/vitruvia/#
- | Src: http://wintercoding.com/vitruvia/js/graph.js
- | Src: http://wintercoding.com/vitruvia/js/scripts.js

.

- Exercises:
  http://wintercoding.com/vitruvia/#
  - Bootstrap, JQuery


### Wx IDE


- [Wx](#wx) IDE for [SML](#sml) with bindings for {TODO: slide}

### bricklayer-lite
- | Homepage: https://bricklayer-lite.appspot.com/static/index.html
- https://bricklayer-lite.appspot.com/static/examples/index.html
- https://bricklayer-lite.appspot.com/static/level1_index.html
- https://bricklayer-lite.appspot.com/static/level2_index.html
- https://bricklayer-lite.appspot.com/static/level3_index.html


# Activities

## Configuration
### Installation
### Upgrades

## Support
### Help Desk
Maintainers respond to help desk requests

### Q&A
Q&A: Community responds with answers, comments, voting

```
    TODO: Docker containers
      osqa/askbot
      New thing TODO
```

### Social Web
#### Hashtags
```
 #bricklayer
 #virtruvia
 #bricklayerlite
 #bl
```

#### Saved Searches

#### Sites
- StackOverflow
- Quora
- Twitter
- Reddit
- GetSatisfaction >> GitHub Issues + Labels
- [ helpdesk/knowledgebase/wiki/issue-tracking system ]

## Instruction

TODO

## Grading
- [nbgrader](#nbgrader)
- [pytest](#pytest)
  - [pytest-mpl](#pytest-mpl)

# Techniques

## Data Driven

### Data Schema



### Knowledge capture
- [x] Helpdesk
  - Issues
  - Knowledgebase
- [ ] [local] Team Q&A
  - #bricklayer
  - #virtruvia    

## Reproducible

### Automation
- [ ] Continuous Integration (tests)
- [ ] Automated grading


## Collaboration Techniques

# Tools

- Ideas and Suggestions

## K12CS Framework
- | Homepage: http://k12cs.org/
- | Supporters: https://k12cs.org/statements-of-support/
- | Download: https://k12cs.org/downloads/
- | Docs:Glossary: https://k12cs.org/glossary/

.

- Download the PDF:
  https://k12cs.org/wp-content/uploads/2016/09/K%E2%80%9312-Computer-Science-Framework.pdf
- https://k12cs.org/navigating-the-practices/
- https://k12cs.org/navigating-the-concepts/


## K12+ Computers
### Windows
- Windows Update Mirror (n*m updates bandwidth)
  - WSUS Offline Update 
- SaltStack
  - https://docs.saltstack.com/en/latest/topics/windows/
  - https://github.com/saltstack/salt-winrepo (delayed updates)
- Chocolatey NuGet (package manager)
  - https://github.com/chocolatey/choco (delayed updates)

### OSX
- SaltStack
  - https://docs.saltstack.com/en/latest/topics/installation/osx.html
  - https://github.com/mosen/salt-osx
- Homebrew (package manager)
  - | Homepage: https://brew.sh/ "Homebrew"
  - | Src: https://github.com/Homebrew/brew
  - | Docs: http://docs.brew.sh/

### ChromeOS
- (Chromebook)
- JS
- Soon, most new Chromebooks will support Android apps
  (Java, C++, Python*)
  - VOC: "A transpiler that converts Python bytecode into Java
    bytecode" ({.pyc, .pyo} => .class)
    - | Homepage: http://pybee.org/project/projects/bridges/voc/
    - | Src: https://github.com/pybee/voc
    - | Docs: https://voc.readthedocs.io/en/latest/
  - https://github.com/pybee/Python-Android-template/tree/3.5/%7B%7B%20cookiecutter.dir_name%20%7D%7D
- Chrome Extensions
  - https://github.com/yeoman/generator-chrome-extension
  - https://github.com/yeoman/generator-chromeapp
  - Firefox is also compatible w/ the WebExtension API
- Q: "Everyone cannot install Crouton [in this amount of time]"
- Q: "How do I install Docker w/ ChromiumOS?"
  - https://gist.github.com/christianbundy/ba62890a7c2f8128bcbb
    - BOARD="x86-generic"
- Q: "How do I ``pip install`` and ``conda install`` w/ ChromeOS?
  - SSH
  - TLS Web Term
    - GateOne
    - Jupyter Terminal
  - Create a Docker container
    - @student "Setup Docker on your platform"
    - @orgname "Host containers with spiking loads for me please?"
      - [kubespawner](#kubespawner)

### SaaS
- Software-as-a-Service
- Maintenance: SaaS is easier to maintain than keeping many
  installations of an app upgraded.
- Availability:
  - A SaaS service is unavailable when the ISP connection is down.
  - (no internet, off-premise SaaS): unavailable
  - (no internet, on-premise SaaS): available
    - see: [minikube](#minikube), [docker compose](#docker-compose.yml)
  - (no internet, desktop app): available (disconnected; updates, upgrades)

### Configuration Management
- Configuration Management
- Continuous Integration
- #DevOps
  - http://www.opsschool.org/en/latest/

#### docker-compose.yml
- | src: https://github.com/docker/compose
- | pypi: https://pypi.python.org/pypi/compose
- | docs: https://docs.docker.com/
- | docs: https://docs.docker.com/compose/
- | docs: https://docs.docker.com/compose/compose-file/
- | docs: https://docs.docker.com/engine/
- | docs: https://docs.docker.com/engine/getstarted/
- | docs: https://docs.docker.com/engine/getstarted-voting-app/

.

- Simplify setup, ensure repeatable and reproducible configuration
- Identify data to persist, log, backup
  - https://docs.docker.com/compose/compose-file/#volume-configuration-reference
- docker-compose.yml examples:
  - https://github.com/docker/compose/blob/master/tests/fixtures/v3-full/docker-compose.yml
  - https://github.com/docker/compose/blob/master/tests/fixtures/environment-interpolation/docker-compose.yml
  - https://github.com/docker/compose/blob/master/tests/fixtures/environment-composefile/docker-compose.yml
  - https://github.com/docker/compose/blob/master/tests/fixtures/networks/external-networks.yml
  - https://github.com/westurner/djangotestapp/blob/develop/docker-compose.yml#L105
- docker-compose.yml:
  - [ ] SML, Python, Vitruvia
- docker-compose.team.yml:
  - Team, Class(es)
  - [ ] GitLab CE && Mattermost
    - Users, Projects, Git Repositories, GitLab Pages (soon) && Channels
    - Auth (SSO: "Single Sign On")
      - Manage users/passwords/emails
        - [ ] Team authz configuration policy
          - [ ] Roles and responsibilities {matrix, }
      - OmniAuth: (GitHub, Bitbucket, GitLab.com, Google, Facebook,
        Twitter, Shibboleth, SAML, Crowd, Azure, Auth0, Authentiq,
        OAuth2Generic)
        - https://docs.gitlab.com/ce/integration/omniauth.html#supported-providers
      - LDAP, SAML, CAS (Thx CERN)
    - Mattermost
      - Open Source Slack Team Chat w/ threaded comments, Markdown,
      - Docs: https://docs.mattermost.com/overview/integrations.html
      - https://about.mattermost.com/features/#featuresTeam
      - https://about.mattermost.com/community-applications/
      - Example use case 1:
        - Given: I've configured a GitLab to Mattermost webhooks
        - When: I commit/merge to the ``orgname/coursekey-instanceid`` repo
        - Then: Then there should be a slack notification for the team/class
        - Existing solutions:
          - GitHub "Watch" > Notifications > Email
          - nbgrader collect; nbgrader autograde;
          - BLD: on_event('commit', requests.post(mat.te/rmost/webhook))
          - BLD: on_event('tests pass', requests.post(mat.te/rmost/webhook))
  - [ ] Minecraft Server
    - q("docker minecraft")
      - https://hub.docker.com/r/itzg/minecraft-server/
      - https://github.com/kubernetes/charts/tree/master/stable/minecraft
        - [minikube](#minikube) + [helm](#helm)
  - [ ] nbgrader
    - nbgrader-demo
      - https://github.com/jhamrick/nbgrader-demo/blob/master/Dockerfile
      - https://github.com/jhamrick/nbgrader-demo
  - [ ] 

#### kompose
- | Src: https://github.com/kubernetes-incubator/kompose
- | Docs: https://kubernetes.io/docs/tools/kompose/
- Generates kubernetes pods from docker-compose.yml files

#### minikube
- | Src: https://github.com/kubernetes/minikube
- | Docs: https://github.com/kubernetes/minikube/#installation
- | Docs: https://github.com/kubernetes/minikube/#starting-a-cluster
- | Docs: https://github.com/kubernetes/minikube/blob/master/docs/minikube.md
- | Docs: https://github.com/kubernetes/minikube/blob/master/docs/minikube_start.md
- | Docs: https://github.com/kubernetes/minikube/blob/master/docs/minikube_ssh.md
- | Download: https://github.com/kubernetes/minikube/releases

```bash

kubectl config use-context minikube
kubectl get pods --context=minikube
minikube ssh -h
minikube dashboard  # Kubernetes dashboard
```

- Persistent volumes
  - https://kubernetes.io/docs/user-guide/persistent-volumes/

> [The Minikube VM] is configured to persist files stored under the following host directories:
> ```
> /data
> /var/lib/localkube
> /var/lib/docker
> /tmp/hostpath_pv
> ```

#### kubespawner
- | Src: https://github.com/jupyterhub/kubespawner
- | Src: https://github.com/jupyterhub/kubespawner/blob/master/kubespawner/spawner.py
- | Docs: https://github.com/jupyterhub/kubespawner/blob/master/SETUP.md

## SML
- | Wikipedia: https://en.wikipedia.org/wiki/Standard_ML
- | Homepage: http://sml-family.org/
- | Docs: http://sml-family.org/
- | LearnXinYMinutes: https://learnxinyminutes.com/docs/standard-ml/
- "Programming in Standard ML" (PDF)
  https://www.cs.cmu.edu/~rwh/isml/book.pdf
- https://sites.google.com/site/polymlsoftware/sml-libraries

### SML/NJ
- | Homepage: http://smlnj.org/
- | Download: http://smlnj.org/dist/working/
- | Src: svn https://anonsvn@smlnj-gforge.cs.uchicago.edu/svn/smlnj
- | Src: http://smlnj.org/svn.html
- | Docs: http://smlnj.org/sml97.html
- SML '97

### SML Basis Library
- | Docs: http://sml.sourceforge.net/Basis/
- | Docs: http://sml.sourceforge.net/Basis/toc.html
- | Docs: http://sml.sourceforge.net/Basis/overview.html
- | Docs: http://sml.sourceforge.net/Basis/top-level-chapter.html \*
- | Docs: http://sml.sourceforge.net/Basis/manpages.html
- | Docs:Index: http://sml.sourceforge.net/Basis/index-all.html

### MLKit
- | Src: https://github.com/melsman/mlkit
- | Docs: http://www.elsman.com/mlkit/doc.html
- SML '97

#### SMLtoJs
- | Docs: https://github.com/melsman/mlkit/blob/master/README_SMLTOJS
- | Src: https://github.com/melsman/mlkit/blob/master/src/Compiler/smltojs.mlb
- | Src: https://github.com/melsman/mlkit/tree/master/src/Compiler/Backend/JS
- | Src: https://github.com/melsman/mlkit/blob/master/src/Compiler/Backend/JS/SmlToJsCompApp.sml
- http://www.smlserver.org/smltojs


## BL
- BrickLayer syntax
- | FileExt: ``.bl``

## GUI Editor Libraries
### Scintilla
- | Wikipedia: https://en.wikipedia.org/wiki/Scintilla_(software)

- OCaml/SML Scintilla settings
  https://sourceforge.net/p/scintilla/scite/ci/default/tree/src/caml.properties


### Wx
### Gtk
### Qt
- https://doc.qt.io/qt-5/accessible.html

#### QScintilla2
- | Homepage: http://pyqt.sourceforge.net/Docs/QScintilla2/


#### Spyder
- | Src: https://github.com/spyder-ide/spyder
- | Docs: https://pythonhosted.org/spyder/
- ``conda install spyder`` also installs {qt, pyqt, }
- ``pip install spyder`` also installs {qt, pyqt, }
- Docs: https://pythonhosted.org/spyder/editor.html#how-to-define-a-code-cell
- BLD: .travis.yml: https://github.com/spyder-ide/spyder/blob/master/.travis.yml
- https://github.com/spyder-ide/spyder/blob/master/create_exe.py
  (cx_freeze)
- https://github.com/spyder-ide/spyder/blob/master/create_app.py
  (py2app)
- Src: https://github.com/spyder-ide/spyder/blob/master/spyder/plugins/editor.py
- Src: https://github.com/spyder-ide/spyder/blob/master/spyder/plugins/console.py
- Src: https://github.com/spyder-ide/spyder/blob/master/spyder/plugins/ipythonconsole.py
- Src: https://github.com/spyder-ide/spyder/tree/master/spyder/widgets
- Src: https://github.com/spyder-ide/spyder/blob/master/spyder/widgets/editor.py
- Src: https://github.com/spyder-ide/spyder/blob/master/spyder/utils/syntaxhighlighters.py
  - Pygments
    - ``CUSTOM_EXTENSION_LEXER``
    - Pygments SML Lexer: https://github.com/MLton/mlton/tree/master/ide/pygments
    - Pygments SML Lexer: http://pygments.org/docs/lexers/#pygments.lexers.ml.SMLLexer

> Spyder may also be used as a PyQt5/PyQt4 extension library (module
> spyder). For example, the Python interactive shell widget used in
> Spyder may be embedded in your own PyQt5/PyQt4 application.


### CodeMirror
- | Homepage: https://codemirror.net/
- | Src: https://github.com/codemirror/CodeMirror
- | Docs: http://codemirror.net/doc/manual.html
- CodeMirror (JS) supports in-browser editing, syntax highlighting,
  autocompletion, search/replace, breakpoints, etc. with
  over 100 languages
- Jupyter Notebook is built on CodeMirror
  - GFM: "GitHub Flavored Markdown"
  - LaTeX (MathTeX): https://github.com/jupyter/notebook/blob/master/notebook/static/notebook/js/codemirror-ipythongfm.js
  - https://github.com/jupyter/notebook/blob/master/notebook/static/edit/js/editor.js
  - https://github.com/jupyter/notebook/blob/master/notebook/static/notebook/js/notebook.js
    set_codemirror_mode
- https://github.com/JedWatson/react-codemirror react-native, 
- MLKit includes CodeMirror
- MLKit includes an SML syntax definition for CodeMirror:
  https://github.com/melsman/mlkit/blob/master/js/codemirror/sml.js


### Ace
- | Homepage: https://ace.c9.io/
- | Src: https://github.com/ajaxorg/ace
- Cloud9 is built on Ace
- Creating a Syntax Highlighter for Ace:
  https://ace.c9.io/#nav=higlighter
  - https://github.com/textmate/standard-ml.tmbundle/blob/master/Syntaxes/Standard%20ML.plist


## 3D / CAD

### LXFML
- | FileExt: ``.lxf``
- | FileExt: ``.lxfml``
- Docs: http://wiki.ldraw.org/index.php?title=LXF


### LDR
- Docs: http://wiki.ldraw.org/index.php?title=LDR

### LDraw
- LEGO CAD standard and updated LEGO parts catalog
- | Homepage: http://www.ldraw.org/
- | Src: 
- | Download: http://www.ldraw.org/parts/latest-parts.html
- | Download: http://www.ldraw.org/library/updates/complete.zip
- | Docs: http://www.ldraw.org/help/getting-started.html
- | Docs:Windows: http://www.ldraw.org/article/104.html
- | Docs:MacOS: http://www.ldraw.org/help/getting-started/mac.html
- | Docs:Linux: http://wiki.ldraw.org/index.php?title=Getting_Started_-_Linux

> LDraw™ is an open standard for LEGO CAD programs that allow the user
> to create virtual LEGO models and scenes. You can use it to document
> models you have physically built, create building instructions just
> like LEGO, render 3D photo realistic images of your virtual models and
> even make animations.

### LEGO Digital Designer
- | Wikipedia: https://en.wikipedia.org/wiki/Lego_Digital_Designer 
- | Homepage: http://ldd.lego.com/
- | Download: http://ldd.lego.com/en-us/download
- | Platforms: Windows, MacOS
- | Download: 278 MB
- .
- [LXFML](#LXFML)
- File > Export Model > Format: {[LDR](#LDR), }
- http://wiki.ldraw.org/index.php?title=LEGO_Digital_Designer
- https://github.com/ossianpe/docker-jpeg2lxfml
  - Jpeg2Lxfml: https://gist.github.com/spudtrooper/4200828

### LeoCAD
- | Homepage: http://www.leocad.org/
- | Src: https://github.com/leozide/leocad
- | Download: http://www.leocad.org/download.html
- | Docs: http://www.leocad.org/docs/
- | Docs: http://www.leocad.org/docs/library.html
- | Docs: http://www.leocad.org/docs/tutorial1.html
- | Docs:Changelog: http://www.leocad.org/docs/history.html
- | Apt: ``apt-get install leocad``
- | Yum: ``yum install leocad``

### Blender
- | Docs: Blender Python API:
  https://docs.blender.org/api/blender_python_api_2_78a_release/

#### LDR-Importer
- | Src: https://github.com/le717/LDR-Importer
- | Docs: https://wiki.blender.org/index.php/Extensions:2.6/Py/Scripts/Import-Export/LDRAW_Importer
- "Import [LDraw](#ldraw) .dat and .ldr models into [Blender](#blender) 3D"

## SciPy Stack
- TODO: 

### SymPy
- sympy.Rational

### sage

#### sage calculus
TODO: sage calc tutorial

#### sage geometry
  Sage geometry
#### sage plot3d
##### sage plot3d three.js

### Mayavi
- http://www.scipy-lectures.org/packages/3d_plotting/



## Jupyter
- https://github.com/ipython
  - https://github.com/ipython/ipython
- https://github.com/jupyter
  - https://github.com/jupyter/notebook (localhost:8888?token=)
- https://github.com/jupyterhub
  - https://github.com/jupyterhub/kubespawner
    ([kubespawner](#kubespawner))
  - https://github.com/jupyterhub/oauthenticator (OAuth)

### Jupyter Notebook
- | Src: https://github.com/jupyter/notebook
- | Docs: https://github.com/jupyter/jupyter/wiki/
- | Docs: http://jupyter-client.readthedocs.io/en/latest/
- | APISwagger: https://github.com/jupyter/notebook/blob/master/notebook/services/api/api.yaml

### Jupyter Kernels
- Wiki: https://github.com/jupyter/jupyter/wiki/Jupyter-kernels
- Wiki: https://github.com/jupyter/jupyter/wiki/Jupyter-kernels#creating-new-jupyter-kernels
- Docs: https://jupyter-client.readthedocs.io/en/latest/kernels.html
- Docs: https://jupyter-client.readthedocs.io/en/latest/wrapperkernels.html
- Docs: https://jupyter-client.readthedocs.io/en/latest/api/client.html#jupyter_client.KernelClient
- Docs: https://jupyter-client.readthedocs.io/en/latest/api/client.html#jupyter_client.BlockingKernelClient
- Docs: https://jupyter.readthedocs.io/en/latest/install-kernel.html
- Wrapper kernel in Python OR Native ZMQ bindings
  - https://stackoverflow.com/questions/28517289/create-language-kernels-for-ipython-for-a-language-without-zeromq-bindings


#### Jupyter Messaging Specification
- | Src: 
- | Docs: https://jupyter-client.readthedocs.io/en/latest/messaging.html
- | Docs: https://jupyter-client.readthedocs.io/en/latest/messaging.html#general-message-format
- | Docs: https://jupyter-client.readthedocs.io/en/latest/messaging.html#the-wire-protocol
- | Docs: https://jupyter-client.readthedocs.io/en/latest/messaging.html#python-api
- | Docs: https://jupyter-client.readthedocs.io/en/latest/messaging.html#heartbeat-for-kernels

#### ipykernel
- ipykernel is the default Jupyter Python Kernel
- | Src: https://github.com/ipython/ipykernel
- https://github.com/ipython/ipykernel/blob/master/ipykernel/kernelapp.py
- https://github.com/ipython/ipykernel/blob/master/ipykernel/embed.py
- https://github.com/ipython/ipykernel/blob/master/examples/embedding/ipkernel_wxapp.py
- https://github.com/ipython/ipykernel/blob/master/examples/embedding/ipkernel_qtapp.py

#### echo_kernel
- echo_kernel is a minimal example IPython wrapper kernel 
- | Src: https://github.com/jupyter/echo_kernel
- | Src: https://github.com/jupyter/echo_kernel/blob/master/echo_kernel/kernel.py
- | Src: https://github.com/jupyter/echo_kernel/blob/master/echo_kernel/__main__.py
- | Src: https://github.com/jupyter/echo_kernel/blob/master/echo_kernel/install.py
- | Docs:  https://jupyter-client.readthedocs.io/en/latest/wrapperkernels.html#example

#### jupyter_kernel_test
> jupyter_kernel_test is a tool for testing Jupyter kernels. It tests
> kernels for successful code execution and conformance with the
> [Jupyter Messaging Protocol](#jupyter-messaging-protocol)
> (currently 5.0).
- | Src: https://github.com/jupyter/jupyter_kernel_test
- | Pypi: https://pypi.python.org/pypi/jupyter_kernel_test
- | Docs: https://github.com/jupyter/jupyter_kernel_test#usage
- | Docs: https://jupyter-client.readthedocs.io/en/latest/messaging.html


#### IOcaml
- IOCaml is an OCaml Jupyter Kernel
- | Src: https://github.com/andrewray/iocaml
- | Docs: https://github.com/andrewray/iocaml/wiki/jupyter
- https://github.com/andrewray/iocaml/blob/master/iocaml.mli
- https://github.com/andrewray/iocaml/blob/master/iocaml.ml
- https://github.com/andrewray/iocaml/blob/master/Ipython_json.atd
- https://github.com/andrewray/iocaml/blob/master/iocaml_zmq.ml

#### SML Jupyter Kernel
- [ ] Create an SML Jupyter Kernel
- [SML](#SML) (*Standard ML*) Jupyter kernel
  - [SML/NJ](#SMLNJ)
  - [SMLtoJs](#SMLtoJs)
- Wrapper kernel
- Fast and Correct
  - [IOcaml](#IOcaml)
  - mlton-zmq
    - https://github.com/kayceesrk/mlton-zmq/blob/master/src/basis-library/mlton/zmq.sml

#### Bricklayer Jupyter Extension
- [ ] Create a Bricklayer Jupyter Extension
- [BL](#bl) (*Bricklayer*) syntax

- {IPython, Jupyter, Nteract} all use the IPython object display protocol:
  - Jupyter nb calls IPython.display.display(_) with each .ipynb cell 
  ```python

 # something like:

```
if hasattr(obj, '_repr_html_'):
    _output = obj._repr_html_()
elif hasattr(obj, '_repr_json_'):
    _output = obj._repr_json_()
    # ...
else:
    _output = repr(obj)  # obj.__repr__()
IPython.display.display(_output)
```

- [ipywidgets](#ipywidgets)
  - https://github.com/jupyter-widgets/widget-cookiecutter
- UI
  - Render all
    - render from standard angles w/
      - LeoCAD
      - Blender ([LDR-Importer](#ldr-importer))
      - Launch LDD
        - WINE
          - search("docker wine")
            - https://github.com/monokrome/docker-wine/blob/master/Dockerfile
              - xvfb-run
            - https://github.com/yantis/docker-wine
              - VirtualGL (Skype on EC2)
        - http://www.sikuli.org/
        - https://pyautogui.readthedocs.io/en/latest/cheatsheet.html
        - https://github.com/pywinauto/pywinauto
          - https://github.com/pywinauto/SWAPY
        - VNC
          - [Gym](#gym)

### nbgrader
- | Src: https://github.com/jupyter/nbgrader
- | Docs: http://nbgrader.readthedocs.io/ 
- | Docs:Wrdrd: https://wrdrd.github.io/docs/consulting/education-technology#nbgrader
- JupyterHub [+ kubespawner] + nbgrader:
  https://nbgrader.readthedocs.io/en/stable/configuration/jupyterhub_config.html
- seeAlso: [pytest-mpl](#pytest-mpl)
- #TDD #TestDrivenDevelopment #ContinuousIntegration

#### pytest
- https://westurner.github.io/wiki/awesome-python-testing#py-test

##### pytest-mpl
- | Src: https://github.com/matplotlib/pytest-mpl
- | Pypi: https://pypi.python.org/pypi/pytest-mpl

### JupyterHub
- | Pypi: https://pypi.python.org/pypi/jupyterhub
- | Src: https://github.com/jupyter/jupyterhub
- https://github.com/jupyterhub/dockerspawner/tree/master/examples/oauth
  
  > This is an example of running JupyterHub with GitHub OAuth for
  > authentication, spinning up a docker container for each user.


### jupyter/docker-stacks
- | Src: https://github.com/jupyter/docker-stacks
- | Src: https://github.com/jupyter/docker-stacks/tree/master/scipy-notebook
- Jupyter, Sympy, Scikit Learn


## OpenAI
- | Src: https://github.com/openai/universe#system-overview
- | Docs: https://github.com/openai/universe#system-overview

- https://github.com/openai/universe-starter-agent

### Gym


# Scripts



# rec

- Create a docker container w/
  - bricklayer
  - ldraw
  - wine + lego digital designer
  - everything else
- Create a [SML Jupyter Kernel](#sml-jupyter-kernel)
- Create a [Bricklayer Jupyter Extension](#bricklayer-jupyter-extension)
- Develop a docker, kubernetes, auth configuration for jupyter/nbgrader, jupyter/kubespawner, kubernetes/minikube



