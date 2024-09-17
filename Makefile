# Building
all:
	make elecmagn
	make fluid
	make geodiff
	make mech

elecmagn: src/elecmagn.tex
	cd src/ && \
	pdflatex -shell-escape elecmagn.tex && \
	pdflatex -shell-escape elecmagn.tex
	mv src/elecmagn.pdf .

fluid: src/fluid.tex
	cd src/ && \
	pdflatex -shell-escape fluid.tex && \
	pdflatex -shell-escape fluid.tex
	mv src/fluid.pdf .

geodiff: src/geodiff.tex
	cd src/ && \
	pdflatex -shell-escape geodiff.tex && \
	pdflatex -shell-escape geodiff.tex
	mv src/geodiff.pdf .

mech: src/mech.tex
	cd src/ && \
	pdflatex -shell-escape mech.tex && \
	pdflatex -shell-escape mech.tex
	mv src/mech.pdf .


# Cleaning
clean:
	make clean-temp
	make clean-elecmagn
	make clean-fluid
	make clean-geodiff
	make clean-mech

clean-temp:
	rm -f  src/*.pdf
	rm -f  src/*.aux
	rm -f  src/*.log
	rm -rf src/_minted-*

clean-elecmagn:
	rm -f  elecmagn.pdf
	rm -f  src/elecmagn/*.pdf
	rm -f  src/elecmagn/*.aux
	rm -f  src/elecmagn/*.log

clean-fluid:
	rm -f  fluid.pdf
	rm -f  src/fluid/*.pdf
	rm -f  src/fluid/*.aux
	rm -f  src/fluid/*.log

clean-geodiff:
	rm -f  geodiff.pdf
	rm -f  src/geodiff/*.pdf
	rm -f  src/geodiff/*.aux
	rm -f  src/geodiff/*.log

clean-mech:
	rm -f  mech.pdf
	rm -f  src/mech/*.pdf
	rm -f  src/mech/*.aux
	rm -f  src/mech/*.log
