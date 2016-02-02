# Makefile for Sphinx documentation
#

# You can set these variables from the command line.
SPHINXOPTS    =
SPHINXBUILD   = sphinx-build
PAPER         =
BUILDDIR      = _build

# User-friendly check for sphinx-build
ifeq ($(shell which $(SPHINXBUILD) >/dev/null 2>&1; echo $$?), 1)
$(error The '$(SPHINXBUILD)' command was not found. Make sure you have Sphinx installed, then set the SPHINXBUILD environment variable to point to the full path of the '$(SPHINXBUILD)' executable. Alternatively you can add the directory with the executable to your PATH. If you don't have Sphinx installed, grab it from http://sphinx-doc.org/)
endif

# Internal variables.
PAPEROPT_a4     = -D latex_paper_size=a4
PAPEROPT_letter = -D latex_paper_size=letter
ALLSPHINXOPTS   = -d $(BUILDDIR)/doctrees $(PAPEROPT_$(PAPER)) $(SPHINXOPTS) .
# the i18n builder cannot share the environment and doctrees with the others
I18NSPHINXOPTS  = $(PAPEROPT_$(PAPER)) $(SPHINXOPTS) .

.PHONY: help clean html dirhtml singlehtml pickle json htmlhelp qthelp devhelp epub latex latexpdf text man changes linkcheck doctest gettext \
	default \
	build_setup \
	rst2html_all \
	copy_sidebar_to_home \
	copy_sidebar_to_readme \
	copy_sidebar_to_footer \
	copy_sidebars \
	copy_sidebars_and_commit \
	localjs localcss \
	localjs-live localcss-live \
	docs \
	open opensingle \
	setup_pgs_websh \
	pgs pgs-gh-pages \
	openpgs openpgs-gh-pages \
	commit \
	setup \
	setup_pip_requirements \
	setup_git_remotes \
	pull push

help:
	@echo "Please use 'make <target>' where <target> is one of"
	@echo "  html       to make standalone HTML files"
	@echo "  dirhtml    to make HTML files named index.html in directories"
	@echo "  singlehtml to make a single large HTML file"
	@echo "  pickle     to make pickle files"
	@echo "  json       to make JSON files"
	@echo "  htmlhelp   to make HTML files and a HTML help project"
	@echo "  qthelp     to make HTML files and a qthelp project"
	@echo "  devhelp    to make HTML files and a Devhelp project"
	@echo "  epub       to make an epub"
	@echo "  latex      to make LaTeX files, you can set PAPER=a4 or PAPER=letter"
	@echo "  latexpdf   to make LaTeX files and run them through pdflatex"
	@echo "  latexpdfja to make LaTeX files and run them through platex/dvipdfmx"
	@echo "  text       to make text files"
	@echo "  man        to make manual pages"
	@echo "  texinfo    to make Texinfo files"
	@echo "  info       to make Texinfo files and run them through makeinfo"
	@echo "  gettext    to make PO message catalogs"
	@echo "  changes    to make an overview of all changed/added/deprecated items"
	@echo "  xml        to make Docutils-native XML files"
	@echo "  pseudoxml  to make pseudoxml-XML files for display purposes"
	@echo "  linkcheck  to check all external links for integrity"
	@echo "  doctest    to run all doctests embedded in the documentation (if enabled)"
	@echo ""
	@echo "  setup                #  to install dependencies and configure the git repo"
	@echo "  setup_pip_requirements  to install pip dependencies"
	@echo "  setup_pgs_websh         to pip install pgs web.sh"
	@echo "  setup_git_remotes       to configure the git repo"
	@echo "  build_setup             to create a _build/html directory"
	@echo "  rst2html_all            to build all .rest pages with rst2html"
	@echo "  copy_sidebar_to_home    to copy _Sidebar.rest to _Home.rest"
	@echo "  copy_sidebar_to_readme  to copy Home.rest to README.rst"
	@echo "  copy_sidebar_to_footer  to copy _Sidebar.rest to _Footer.rest"
	@echo "  copy_sidebars           to copy_sidebar_[...]"
	@echo "  copy_sidebars_and_commit  to copy sidebars and git commit"
	@echo "  localjs                 to build _static/css/local.js"
	@echo "  localcss                to build _static/css/local.css"
	@echo "  localjs-live            to copy _static/css/local.js  to _build/[single]html"
	@echo "  localcss-live           to copy _static/css/local.css to _build/[single]html"
	@echo "  docs                 #  to build sidebars, rst2html_all, and _build/{html}"
	@echo "  open                 #  to open the docs in a browser"
	@echo "  opensingle              to open the singleHTML docs in a browser"
	@echo "  setup_pgs_websh         to pip install pgs web.sh"
	@echo "  pgs                     to serve _build/html from http://localhost:10800/"
	@echo "  pgs-gh-pages            to serve git:gh-pages from http://localhost:10801/"
	@echo "  openpgs                 to open http://localhost:10800/ w/ web"
	@echo "  openpgs-gh-pages        to open http://localhost:10800/ w/ web"
	@echo ""
	@echo "  build                #  to build sidebars, rst2html_all, and _build/html"
	@echo "  docs                 #  to build sidebars, rst2html_all, and _build/html"
	@echo "  commit                  to 'git commit'"
	@echo "  pull                 #  to git pull from both repos: .wiki and gh-pages"
	@echo "  push                 #  to git push to   both repos: .wiki and gh-pages"
	@echo "  gh-pages             #  to overwrite the gh-pages branch with _build/html"
	@echo ""
	@echo "## Usage:"
	@echo ""
	@echo " Configure git remote URIs for the cloned repo ::"
	@echo ""
	@echo "   $ make setup_git_remotes"
	@echo "   $ git remote -a && git branch -a"
	@echo ""
	@echo " Pull/push from/to repo and repo.wiki.git (repo[.wiki.git]) ::"
	@echo ""
	@echo "   $ make pull  # pull incoming changes from repo, repo.wiki.git"
	@echo "   $ make push  # push outgoing changes to repo, repo.wiki.git"
	@echo ""
	@echo " Build the docs, push, and overwrite/push to gh-pages"
	@echo " (``_build/html`` -> ``PGS_GIT_REV=gh-pages``) ::"
	@echo ""
	@echo "   $ make docs push gh-pages"
	@echo ""
	@echo " Install pgs and web.sh with pip ::"
	@echo ""
	@echo "   $ make setup_pgs_websh"
	@echo ""
	@echo " Serve from the filesystem & open w/ 'web' ::"
	@echo ""
	@echo "   $ PGS_FS_PORT=10800 make pgs & make openpgs & jobs"
	@echo "   (web 'http://localhost:10800/')"
	@echo ""
	@echo " Serve from the local 'gh-pages' branch & open w/ 'web' ::"
	@echo ""
	@echo "   $ make setup_pgs_websh"
	@echo "   $ PGS_GIT_PORT=10801 make pgs-gh-pages & make openpgs-gh-pages & jobs"
	@echo "   (web 'http://localhost:10801/')"
	@echo ""
	@echo '.'

clean:
	rm -rf $(BUILDDIR)/*

html:
	$(SPHINXBUILD) -b html $(ALLSPHINXOPTS) $(BUILDDIR)/html
	@echo
	@echo "Build finished. The HTML pages are in $(BUILDDIR)/html."

dirhtml:
	$(SPHINXBUILD) -b dirhtml $(ALLSPHINXOPTS) $(BUILDDIR)/dirhtml
	@echo
	@echo "Build finished. The HTML pages are in $(BUILDDIR)/dirhtml."

singlehtml:
	$(SPHINXBUILD) -b singlehtml $(ALLSPHINXOPTS) $(BUILDDIR)/singlehtml
	@echo
	@echo "Build finished. The HTML page is in $(BUILDDIR)/singlehtml."

pickle:
	$(SPHINXBUILD) -b pickle $(ALLSPHINXOPTS) $(BUILDDIR)/pickle
	@echo
	@echo "Build finished; now you can process the pickle files."

json:
	$(SPHINXBUILD) -b json $(ALLSPHINXOPTS) $(BUILDDIR)/json
	@echo
	@echo "Build finished; now you can process the JSON files."

htmlhelp:
	$(SPHINXBUILD) -b htmlhelp $(ALLSPHINXOPTS) $(BUILDDIR)/htmlhelp
	@echo
	@echo "Build finished; now you can run HTML Help Workshop with the" \
	      ".hhp project file in $(BUILDDIR)/htmlhelp."

qthelp:
	$(SPHINXBUILD) -b qthelp $(ALLSPHINXOPTS) $(BUILDDIR)/qthelp
	@echo
	@echo "Build finished; now you can run "qcollectiongenerator" with the" \
	      ".qhcp project file in $(BUILDDIR)/qthelp, like this:"
	@echo "# qcollectiongenerator $(BUILDDIR)/qthelp/complexity.qhcp"
	@echo "To view the help file:"
	@echo "# assistant -collectionFile $(BUILDDIR)/qthelp/complexity.qhc"

devhelp:
	$(SPHINXBUILD) -b devhelp $(ALLSPHINXOPTS) $(BUILDDIR)/devhelp
	@echo
	@echo "Build finished."
	@echo "To view the help file:"
	@echo "# mkdir -p $$HOME/.local/share/devhelp/complexity"
	@echo "# ln -s $(BUILDDIR)/devhelp $$HOME/.local/share/devhelp/complexity"
	@echo "# devhelp"

epub:
	$(SPHINXBUILD) -b epub $(ALLSPHINXOPTS) $(BUILDDIR)/epub
	@echo
	@echo "Build finished. The epub file is in $(BUILDDIR)/epub."

latex:
	$(SPHINXBUILD) -b latex $(ALLSPHINXOPTS) $(BUILDDIR)/latex
	@echo
	@echo "Build finished; the LaTeX files are in $(BUILDDIR)/latex."
	@echo "Run \`make' in that directory to run these through (pdf)latex" \
	      "(use \`make latexpdf' here to do that automatically)."

latexpdf:
	$(SPHINXBUILD) -b latex $(ALLSPHINXOPTS) $(BUILDDIR)/latex
	@echo "Running LaTeX files through pdflatex..."
	$(MAKE) -C $(BUILDDIR)/latex all-pdf
	@echo "pdflatex finished; the PDF files are in $(BUILDDIR)/latex."

latexpdfja:
	$(SPHINXBUILD) -b latex $(ALLSPHINXOPTS) $(BUILDDIR)/latex
	@echo "Running LaTeX files through platex and dvipdfmx..."
	$(MAKE) -C $(BUILDDIR)/latex all-pdf-ja
	@echo "pdflatex finished; the PDF files are in $(BUILDDIR)/latex."

text:
	$(SPHINXBUILD) -b text $(ALLSPHINXOPTS) $(BUILDDIR)/text
	@echo
	@echo "Build finished. The text files are in $(BUILDDIR)/text."

man:
	$(SPHINXBUILD) -b man $(ALLSPHINXOPTS) $(BUILDDIR)/man
	@echo
	@echo "Build finished. The manual pages are in $(BUILDDIR)/man."

texinfo:
	$(SPHINXBUILD) -b texinfo $(ALLSPHINXOPTS) $(BUILDDIR)/texinfo
	@echo
	@echo "Build finished. The Texinfo files are in $(BUILDDIR)/texinfo."
	@echo "Run \`make' in that directory to run these through makeinfo" \
	      "(use \`make info' here to do that automatically)."

info:
	$(SPHINXBUILD) -b texinfo $(ALLSPHINXOPTS) $(BUILDDIR)/texinfo
	@echo "Running Texinfo files through makeinfo..."
	make -C $(BUILDDIR)/texinfo info
	@echo "makeinfo finished; the Info files are in $(BUILDDIR)/texinfo."

gettext:
	$(SPHINXBUILD) -b gettext $(I18NSPHINXOPTS) $(BUILDDIR)/locale
	@echo
	@echo "Build finished. The message catalogs are in $(BUILDDIR)/locale."

changes:
	$(SPHINXBUILD) -b changes $(ALLSPHINXOPTS) $(BUILDDIR)/changes
	@echo
	@echo "The overview file is in $(BUILDDIR)/changes."

linkcheck:
	$(SPHINXBUILD) -b linkcheck $(ALLSPHINXOPTS) $(BUILDDIR)/linkcheck
	@echo
	@echo "Link check complete; look for any errors in the above output " \
	      "or in $(BUILDDIR)/linkcheck/output.txt."

doctest:
	$(SPHINXBUILD) -b doctest $(ALLSPHINXOPTS) $(BUILDDIR)/doctest
	@echo "Testing of doctests in the sources finished, look at the " \
	      "results in $(BUILDDIR)/doctest/output.txt."

xml:
	$(SPHINXBUILD) -b xml $(ALLSPHINXOPTS) $(BUILDDIR)/xml
	@echo
	@echo "Build finished. The XML files are in $(BUILDDIR)/xml."

pseudoxml:
	$(SPHINXBUILD) -b pseudoxml $(ALLSPHINXOPTS) $(BUILDDIR)/pseudoxml
	@echo
	@echo "Build finished. The pseudo-XML files are in $(BUILDDIR)/pseudoxml."


### </sphinx Makefile>

### <sphinxghwiki Makefile>
# See: 'make help'

#.PHONY: default \
#        build_setup \
#        rst2html_all \
#        copy_sidebar_to_home \
#        copy_sidebar_to_readme \
#        copy_sidebar_to_footer \
#        copy_sidebars \
#        copy_sidebars_and_commit \
#        localjs localcss \
#        localjs-live localcss-live \
#        docs \
#        open opensingle \
#        setup_pgs_websh \
#        pgs pgs-gh-pages \
#        openpgs openpgs-gh-pages \
#        commit \
#        setup \
#        setup_pip_requirements \
#        setup_git_remotes \
#        pull push

WIKI_REPO_PATH=westurner/wiki
WIKI_REPO_URL=github.com/${WIKI_REPO_PATH}

default: build

build_setup:
	[ -d ./_build ] || mkdir -pv ./_build/
	[ -d ./_build/html ] || mkdir -pv ./_build/html

rst2html_all: build_setup
	find . -name '*.rest' -print0 \
		| xargs -0 -I % rst2html.py % _build/html/%.html

copy_sidebar_to_home:
	@echo '' > Home.rest
	@echo 'Welcome to `<https://$(WIKI_REPO_URL)/wiki>`_' >> Home.rest
	@echo '' >> Home.rest
	@echo '.. image:: https://badge.waffle.io/${WIKI_REPO_PATH}.png?label=ready&title=Ready'  >> Home.rest
	@echo '   :target: https://waffle.io/${WIKI_REPO_PATH}' >> Home.rest
	@echo '   :alt: "Stories in Ready"' >> Home.rest
	@echo '' >> Home.rest
	cat _Sidebar.rest >> Home.rest

copy_sidebar_to_readme: copy_sidebar_to_home
	cp Home.rest README.rst

copy_sidebar_to_footer:
	@echo '' > _Footer.rest
	@echo '`#top <#>`_' >> _Footer.rest
	@echo '' >> _Footer.rest
	@echo '*****' >> _Footer.rest
	@echo '' >> _Footer.rest
	cat _Sidebar.rest >> _Footer.rest

copy_sidebars:
	@$(MAKE) copy_sidebar_to_readme #: copy_sidebar_to_home
	@$(MAKE) copy_sidebar_to_footer

copy_sidebars_and_commit:
	$(MAKE) copy_sidebars
	git add Home.rest _Footer.rest README.rst
	git commit _Footer.rest Home.rest README.rst \
		-m "DOC: :fast_forward: Home, _Sidebar, _Footer, and README navigation"

STATIC:=./_static
LOCALJS=$(STATIC)/js/local.js
LOCALCSS=$(STATIC)/css/local.css

localjs:
	echo '' > $(LOCALJS)
	@cat $(STATIC)/js/ga.js >> $(LOCALJS)
	@cat $(STATIC)/js/newtab.js >> $(LOCALJS)
	@cat $(STATIC)/js/sidenav-affix.js >> $(LOCALJS)
	@cat $(STATIC)/js/jquery.scrollTo.js >> $(LOCALJS)
	@cat $(STATIC)/js/jquery.isonscreen.js >> $(LOCALJS)
	@cat $(STATIC)/js/sidenav-scrollto.js >> $(LOCALJS)

localcss:
	echo '' > $(LOCALCSS)
	@cat $(STATIC)/css/custom.css >> $(LOCALCSS)
	@cat $(STATIC)/css/sidenav-scrollto.css >> $(LOCALCSS)
	@cat $(STATIC)/css/leftnavbar.css >> $(LOCALCSS)
	@cat $(STATIC)/css/wiki.css >> $(LOCALCSS)

BUILDDIR:=./_build
BUILDDIRHTML:=./_build/html
BUILDDIRSINGLEHTML:=./_build/singlehtml

localjs-live:
	$(MAKE) localjs
	cp -v ${LOCALJS} ${BUILDDIRHTML}/_static/js/local.js  || true;
	cp -v ${LOCALJS} ${BUILDDIRSINGLEHTML}/_static/js/local.js  || true;

localcss-live:
	$(MAKE) localcss
	cp -v ${LOCALCSS} ${BUILDDIRHTML}/_static/css/local.css || true;
	cp -v ${LOCALCSS} ${BUILDDIRSINGLEHTML}/_static/css/local.css || true;

local-live:
	$(MAKE) localjs-live
	$(MAKE) localcss-live

build: copy_sidebars rst2html_all localjs localcss html singlehtml

docs: build
	# build the docs

open:
	# open the ./html/ build in a web browser (pip install web.sh)
	@#open _build/html/index.html
	@#web './_build/html/index.html'
	web '${BUILDDIRHTML}/index.html'

opensingle:
	# open the ./singlehtml/ build in a web browser (pip install web.sh)
	@#web './_build/singlehtml/index.html'
	web '${BUILDDIRSINGLEHTML}/index.html'


GITREPODIR=${PWD}

PGS_FS_HOST=localhost
PGS_FS_PORT=10800
PGS_GIT_HOST=localhost
PGS_GIT_PORT=10801

GH_PAGES_BRANCH=gh-pages
PGS_GIT_REV?=${GH_PAGES_BRANCH}

setup_pgs_websh:
	pip install pgs web.sh # || pip install --user pgs web.sh

pgs:
	pgs -p '${BUILDDIRHTML}' --host='${PGS_FS_HOST}' --port='${PGS_FS_PORT}'

pgs-gh-pages:
	pgs -g '${GITREPODIR}' -r '${PGS_GIT_REV}' --host='${PGS_GIT_HOST}' --port='${PGS_GIT_PORT}'

openpgs:
	# open the docs in a web browser
	@#web 'http://localhost:10800/'
	web 'http://${PGS_FS_HOST}:${PGS_FS_PORT}/'

openpgs-gh-pages:
	@#web 'http://localhost:10801/'
	web 'http://${PGS_GIT_HOST}:${PGS_GIT_PORT}/'

#clean:
#	rm -rf ./_build

commit:
	git commit

setup:
	# setup install requirements
	$(MAKE) setup_pip_requirements

setup_pip_requirements:
	# install setup requirements with pip
	pip install -r ./requirements.txt

setup_git_remotes:
	# git remote set origin, wiki to WIKI_REPO_URL[.wiki.git]
	# git clone ssh://git@$(WIKI_REPO_URL)
	git remote remove origin || true
	git remote add origin ssh://git@$(WIKI_REPO_URL)
	git remote remove wiki || true
	git remote add wiki ssh://git@$(WIKI_REPO_URL).wiki.git

pull:
	# git pull from origin master, wiki master
	git pull origin master
	git pull wiki master

push:
	# git push to origin master, wiki master, origin gh-pages
	git push origin master
	git push wiki master
	git push origin gh-pages

ghp-import:
	# Push _build/html to [GH_PAGES_BRANCH:gh-pages] w/ a .nojekyll file
	@#echo ghp-import -n -b '${GH_PAGES_BRANCH}' -p '${BUILDDIRSINGLEHTML}'
	ghp-import -n -b '${GH_PAGES_BRANCH}' -p '${BUILDDIRHTML}' \
		-m "DOC,RLS: :books: gh-pages from: $(shell git \
		-C '${GITREPODIR}' rev-parse --short HEAD)"

gh-pages: ghp-import
