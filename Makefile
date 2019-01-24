
all: pdf_manual html_manual

ELINKKVM_MANUAL=Docs/english/elinkkvm_guide.adoc
ELINKKVM_XML_OUT=build/html/elinkkvm_guide.xml
ELINKKVM_HTML_PATH=build/html/

pdf_manual:
	mkdir -p build/
	asciidoctor-pdf -a pdf-style=Resource/theme/custom-theme.yml -a pdf-fontsdir=Resource/fonts/ ${ELINKKVM_MANUAL} -o build/elinkkvm_guide.pdf

html_manual:
	mkdir -p build/html
	asciidoctor -b docbook -a data-uri! ${ELINKKVM_MANUAL} -o ${ELINKKVM_XML_OUT}
	xsltproc --output ${ELINKKVM_HTML_PATH} --nonet Resource/docbook/html/chunk.xsl  ${ELINKKVM_XML_OUT} 
