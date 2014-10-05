
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

WIKI_REPO_URL="github.com/westurner/wiki"

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
	echo 'Welcome to `<https://$$WIKI_REPO_URL/wiki>`_' >> Home.rest
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

build: copy_sidebars rst2html_all

clean:
	rm -rf ./_build

commit:
	git commit

setup:
	$(MAKE) setup_pip_requirements

setup_pip_requirements:
	pip install -r ./requirements.txt

setup_git_remotes:
	# git clone ssh://git@$$WIKI_REPO_URL
	git remote remove origin || true
	git remote add origin ssh://git@$$WIKI_REPO_URL
	git remote remove wiki || true
	git remote add wiki ssh://git@$$WIKI_REPO_URL.wiki.git

pull:
	git pull origin master
	git pull wiki master

push:
	git push origin master
	git push -f wiki master
	git push -f origin gh-pages

