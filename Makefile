# File name convention for left column
# eg: this.html
INPUT = es5

# File name convention for right column
# eg: that.html
OUTPUT = es6

# File extension to identify which type of file
# eg: html, js, css, etc.,
EXT = js

objects := code/*

.PHONY: clean, new

index.html: $(objects) 
	cat head.html > index.html
	for comp in $(objects); do \
	  SECTION=`echo $$comp | sed 's/code\///'`; \
	  sed "s|{{EXT}}|$(EXT)|g;s|{{INPUT}}|$(INPUT)|g;s|{{OUTPUT}}|$(OUTPUT)|g;s|{{SECTION}}|$$SECTION|g" template.html >> index.html; \
	done
	cat tail.html >> index.html

clean:  
	rm -Rf code/*

new:
	@read -p "Enter new comparison name: " name; \
	mkdir -p code/$$name; \
	touch code/$$name/$(INPUT).$(EXT); \
	touch code/$$name/$(OUTPUT).$(EXT); \
	touch code/$$name/header.html


