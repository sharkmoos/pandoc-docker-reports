BUILDDIR=build
FILENAME=report
TEMPLATE=eisvogel


pdf:
    docker run --rm --volume "`pwd`:/data" --user `id -u`:`id -g` pandoc/latex

# pdf:
# 	mkdir $(BUILDDIR) -p
# 	pandoc $(FILENAME).md \
# 	--filter pandoc-citeproc \
# 	--from markdown+yaml_metadata_block+raw_html \
# 	--to=latex \
# 	--output $(BUILDDIR)/$(FILENAME).pdf  \
# 	--template=Templates/eisvogel.latex \
# 	--table-of-contents \
# 	--toc-depth 6 \
# 	--top-level-division=chapter \
# 	--highlight=tango   
#--table-of-contents \
#--toc-depth 6
#--top-level-division=chapter 
#--filter pandoc-citeproc \
#--from=markdown \
#--to=latex \
#--output=$(BUILDDIR)/$(FILENAME).pdf \
