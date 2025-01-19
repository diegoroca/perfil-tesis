default: quick

build:
	pdflatex -interaction=batchmode main.tex
	biber --quiet main
	pdflatex -interaction=batchmode main.tex
	pdflatex -synctex=1 -interaction=batchmode main.tex
	echo -e "\e[32mbuilding done\e[0m"

quick:
	pdflatex -synctex=1 -interaction=batchmode main.tex
	echo -e "\e[32mquick build done\e[0m"


view:
	echo "opening pdf output"
	acrobat.exe main.pdf
	echo -e "\e[32mpdf closed\e[0m"

clear:
	rm *.aux
	rm *.log
	rm main.synctex.gz
	rm main.toc
	rm main.bcf
	rm main.blg
	rm main.lof
	rm main.lot
	rm main.run.xml
	rm main.bbl
	echo -e "\e[32mproject outputs cleared\e[0m"


