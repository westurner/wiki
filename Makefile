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

.PHONY: help clean html dirhtml singlehtml pickle json htmlhelp qthelp devhelp epub latex latexpdf text man changes linkcheck doctest gettext

help:
	@echo "Please use \`make <target>' where <target> is one of"
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
	@echo "  setup                   to install dependencies and configure the git repo"
	@echo "  setup_pip_requirements  to install pip dependencies"
	@echo "  setup_git_remotes       to configure the git repo"
	@echo "  build_setup             to create a _build/html directory"
	@echo "  copy_sidebar_to_footer  to copy _Sidebar.rest to _Footer.rest"
	@echo "  copy_sidebar_to_readme  to copy _Sidebar.rest to README.rst"
	@echo "  copy_sidebar_to_home    to copy _Sidebar.rest to _Home.rest"
	@echo "  copy_sidebars           to copy _Sidebar.rest to Footer, README"
	@echo "  copy_sidebars_and_commit  to copy sidebars and git commit"
	@echo "  commit                  to git commit"
	@echo "  pull                    to git pull from both repos: .wiki and gh-pages"
	@echo "  push                    to git push to   both repos: .wiki and gh-pages"
	@echo "  gh-pages                to overwrite the gh-pages branch with _build/html"
	@echo ""
	@echo "  rst2html_all            to build all .rest pages with rst2html"
	@echo "  build                   to build sidebars, rst2html_all, and html"
	@echo ""
	@echo "  Example: make commit pull build gh-pages push"


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



### wiki Makefile

.PHONY: default clean build \
		build_setup \
		rst2html_all \
		copy_sidebar_to_footer \
		copy_sidebar_to_home \
		copy_sidebar_to_readme \
		copy_sidebar_to_footer_and_commit \
		copy_sidebars \
		setup \
		setup_pip_requirements \
		setup_git_remotes \
		commit \
		pull \
		push

WIKI_REPO_URL=github.com/westurner/wiki

default: build

build_setup:
	[ -d ./_build ] || mkdir -pv ./_build/
	[ -d ./_build/html ] || mkdir -pv ./_build/html

rst2html_all: build_setup
	find . -name '*.rest' -print0 \
		| xargs -0 -I % rst2html.py % _build/html/%.html

copy_sidebar_to_footer:
	echo '' > _Footer.rest
	echo '`#top <#>`_' >> _Footer.rest
	echo '' >> _Footer.rest
	echo '*****' >> _Footer.rest
	echo '' >> _Footer.rest
	cat _Sidebar.rest >> _Footer.rest

copy_sidebar_to_home:
	echo '' > Home.rest
	echo 'Welcome to `<https://$(WIKI_REPO_URL)/wiki>`_' >> Home.rest
	echo '' >> Home.rest
	cat _Sidebar.rest >> Home.rest

copy_sidebar_to_readme: copy_sidebar_to_home
	cp Home.rest README.rst

copy_sidebars:
	$(MAKE) copy_sidebar_to_footer
	#$(MAKE) copy_sidebar_to_home
	$(MAKE) copy_sidebar_to_readme

copy_sidebars_and_commit:
	$(MAKE) copy_sidebars
	git add Home.rest _Footer.rest
	git commit _Footer.rest _Home.rest README.rst \
		-m "DOC: Regenerate _Home, _Sidebar, _Footer, and README navigation"

STATIC:=./_static
LOCALJS=$(STATIC)/js/local.js
LOCALCSS=$(STATIC)/css/local.css

localjs:
	echo '' > $(LOCALJS)
	cat $(STATIC)/js/ga.js >> $(LOCALJS)
	cat $(STATIC)/js/newtab.js >> $(LOCALJS)
	cat $(STATIC)/js/affix-sidenav.js >> $(LOCALJS)

localcss:
	echo '' > $(LOCALCSS)
	cat $(STATIC)/css/custom.css >> $(LOCALCSS)
	cat $(STATIC)/css/wiki.css >> $(LOCALCSS)


build: copy_sidebars rst2html_all localjs localcss html singlehtml

docs: build

open:
	open _build/html/index.html

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
	git push -f wiki master
	git push -f origin gh-pages

gh-pages:
	# Push docs to gh-pages branch with a .nojekyll file
	ghp-import -n -p ./_build/html/
	#ghp-import -n -p ./docs/_build/singlehtml/
