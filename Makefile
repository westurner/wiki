
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

copy_sidebar_to_footer_and_commit: copy_sidebar_to_footer
	git add _Footer.rest
	git commit _Footer.rest -m "Copy _Footer.rest from _Sidebar.rest"

build: copy_sidebar_to_footer rst2html_all

clean:
	rm -rf ./_build
