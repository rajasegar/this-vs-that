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

define code = 
"<section aria-labelledby=\"section-$(1)\">\n" \
"<h3 id=\"section-$(1)\">$(section)</h3>\n" \
"  <div class=\"grid\">\n" \
      "<div>\n" \
        "<h4>$(INPUT)</h4>\n" \
        "<pre data-src=\"code/$(1)/$(INPUT).$(EXT)\"></pre>\n" \
      "</div>\n" \
      "<div>\n" \
        "<h4>$(OUTPUT)</h4>\n" \
        "<pre data-src=\"code/$(1)/$(OUTPUT).$(EXT)\"></pre>\n" \
    "  </div>\n" \
    "</div>\n" \
"</section>"
endef

doc = 

index.html: $(objects) 
	for comp in $(objects); do  \
	  echo $$comp; \
	  doc := $(doc) $(call code,$comp); \
	done
clean:  
	rm -Rf code/*

new:
	@read -p "Enter new comparison name: " name; \
	mkdir -p code/$$name; \
	touch code/$$name/$(INPUT).$(EXT); \
	touch code/$$name/$(OUTPUT).$(EXT); \
	touch code/$$name/header.html


