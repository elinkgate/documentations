ELINKKVM_PDF_MANUAL=Docs/english/elinkkvm_manual_pdf.adoc
ELINKKVM_HTML_MANUAL=Docs/english/elinkkvm_manual_html.adoc
ELINKKVM_XML_OUT=build/html/elinkkvm_guide.xml
ELINKKVM_HTML_PATH=build/html/

all: pdf-manual html-manual

pdf-manual:
	mkdir -p build/
	asciidoctor-pdf -a pdf-style=Resource/theme/custom-theme.yml -a pdf-fontsdir=Resource/fonts/ ${ELINKKVM_PDF_MANUAL} -o build/elinkkvm_manual.pdf

html-manual:
	mkdir -p build/html
	asciidoctor -b docbook -a data-uri! ${ELINKKVM_HTML_MANUAL} -o ${ELINKKVM_XML_OUT}
	xsltproc --output ${ELINKKVM_HTML_PATH} --nonet Resource/docbook/html/chunk.xsl  ${ELINKKVM_XML_OUT} 
