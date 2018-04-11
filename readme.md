# pandoc_env

## What's this?
- My pandoc build tool
- convert markdown to pdf, written in Japanese, mainly

## build image
./build.sh

## create pdf
<pre>
cd src/xxxx # document's md dir

docker run \
-v `pwd`:/workspace \
-w /workspace \
-it pandoc_env:latest \
pandoc *.md \
-f markdown+hard_line_breaks \
-F pandoc-plantuml-filter \
-F pandoc-crossref \
-o output.pdf \
-V documentclass=ltjsarticle \
--latex-engine=lualatex \
-N --toc --highlight-style=tango
</pre>
