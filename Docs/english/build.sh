#!/bin/bash
asciidoctor-pdf -a pdf-style=../../Resource/theme/custom-theme.yml -a pdf-fontsdir=../../Resource/fonts/ $1
