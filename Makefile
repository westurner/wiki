
.PHONY: default clean build \
		build_setup rst2html_all \
		copy_sidebar_to_footer copy_sidebar_to_footer_and_commit

default: build


build_setup:
	[ -d ./_build ] || mkdir -pv ./_build/
	[ -d ./_build/html ] || mkdir -pv ./_build/html

rst2html_all: build_setup
	find . -name '*.rest' -print0 \
		| xargs -0 -I % rst2html.py % _build/html/%.html

copy_sidebar_to_footer:
	cp _Sidebar.rest _Footer.rest

copy_sidebar_to_home:
	echo '' > Home.rest
	echo 'Welcome to `<https://github.com/westurner/wiki/wiki>`_' >> Home.rest
	echo '' >> Home.rest
	cat _Sidebar.rest >> Home.rest

copy_sidebars:
	$(MAKE) copy_sidebar_to_footer
	$(MAKE) copy_sidebar_to_home

copy_sidebar_and_commit:
	$(MAKE) copy_sidebars
	git add Home.rest _Footer.rest
	git commit _Footer.rest _Home.rest -m "DOC: Regenerate Sidebars"

build: copy_sidebars rst2html_all

clean:
	rm -rf ./_build

commit:
	git commit

push:
	git push
