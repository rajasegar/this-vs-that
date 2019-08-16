#!/bin/sh

# File name convention for left column
# eg: this.html
INPUT="es5"

# File name convention for right column
# eg: that.html
OUTPUT="es6"

# File extension to identify which type of file
# eg: html, js, css, etc.,
EXT="js"


main() {

  doc=""

  for section in `ls code`
  do
  temp="
  <section aria-labelledby=\"section-${section}\">\n
    <h3 id=\"section-${section}\">${section}</h3>\n
    $(cat "code/${section}/header.html")\n
    <div class=\"grid\">\n
      <div>\n
        <h4>${INPUT}</h4>\n
        <pre data-src=\"code/${section}/${INPUT}.${EXT}\"></pre>\n
      </div>\n
      <div>\n
        <h4>${OUTPUT}</h4>\n
        <pre data-src=\"code/${section}/${OUTPUT}.${EXT}\"></pre>\n
      </div>\n
    </div>\n
  </section>\n
  "
  doc="$doc$temp"
  done

  # Concatenate files
  cat head.html > index.html
  echo $doc >> index.html
  cat tail.html >> index.html
  #echo $doc
}

main
