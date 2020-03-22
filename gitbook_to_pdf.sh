# #!/bin/bash

GITBOOK_REP=$1
SUMMARY_FILE="SUMMARY.md"
echo $OUTPUT_FILE

if [ -d "$GITBOOK_REP" ]; then

  echo "Entering directory '$GITBOOK_REP'..."
  cd $GITBOOK_REP
  if [ -f "$SUMMARY_FILE" ]; then
    # read summary and get texts by order in a single big file
    pandoc $SUMMARY_FILE -t html | \
      grep -o '<a href=['"'"'"][^"'"'"']*['"'"'"]' | \
      sed -e 's/^<a href=["'"'"']//' -e 's/["'"'"']$//'| \
      xargs cat | sed 's/\$\$/\$/g' | \
      pandoc -f markdown \
              --variable fontsize=11pt \
              --variable=geometry:b5paper \
              --variable mainfont="Georgia" \
              --variable documentclass=book \
              --resource-path="chapters/getting-started/:chapters/intelligent-testing:chapters/pragmatic-testing:chapters/testing-techniques" \
             --toc --toc-depth=3 --pdf-engine=xelatex -o book.pdf
  else
    echo "File '$SUMMARY_FILE' does not exist"
  fi
else
echo "Directory '$GITBOOK_REP' does not exist"
fi

