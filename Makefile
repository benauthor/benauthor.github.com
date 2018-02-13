.PHONY: develop

clean:
	rm -rf _site

install:
	bundle install

develop:
	bundle exec jekyll serve
