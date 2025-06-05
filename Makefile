# Building
all:
	make axler
	make picasso
	make ballentine
	make batchelor
	make circuito-infinito
	make delia
	make esplosione-coulombiana
	make noteciampini
	make noteconti
	make notekonishi
	make rosati
	make brachistochrone
	make ytnotes
	make sparse
	make mymath
	make union-of-vector-spaces

axler: src/axler.tex
	cd src/ && \
	pdflatex -shell-escape axler.tex && \
	pdflatex -shell-escape axler.tex
	mv src/axler.pdf .

picasso: src/picasso.tex
	cd src/ && \
	pdflatex -shell-escape picasso.tex && \
	pdflatex -shell-escape picasso.tex
	mv src/picasso.pdf .

ballentine: src/ballentine.tex
	cd src/ && \
	pdflatex -shell-escape ballentine.tex && \
	pdflatex -shell-escape ballentine.tex
	mv src/ballentine.pdf .

batchelor: src/batchelor.tex
	cd src/ && \
	pdflatex -shell-escape batchelor.tex && \
	pdflatex -shell-escape batchelor.tex
	mv src/batchelor.pdf .

circuito-infinito: src/circuito-infinito.tex
	cd src/ && \
	pdflatex -shell-escape circuito-infinito.tex && \
	pdflatex -shell-escape circuito-infinito.tex
	mv src/circuito-infinito.pdf .

delia: src/delia.tex
	cd src/ && \
	pdflatex -shell-escape delia.tex && \
	pdflatex -shell-escape delia.tex
	mv src/delia.pdf .

esplosione-coulombiana: src/esplosione-coulombiana.tex
	cd src/ && \
	pdflatex -shell-escape esplosione-coulombiana.tex && \
	pdflatex -shell-escape esplosione-coulombiana.tex
	mv src/esplosione-coulombiana.pdf .

noteciampini: src/noteciampini.tex
	cd src/ && \
	pdflatex -shell-escape noteciampini.tex && \
	pdflatex -shell-escape noteciampini.tex
	mv src/noteciampini.pdf .

noteconti: src/noteconti.tex
	cd src/ && \
	pdflatex -shell-escape noteconti.tex && \
	pdflatex -shell-escape noteconti.tex
	mv src/noteconti.pdf .

notekonishi: src/notekonishi.tex
	cd src/ && \
	pdflatex -shell-escape notekonishi.tex && \
	pdflatex -shell-escape notekonishi.tex
	mv src/notekonishi.pdf .

rosati: src/rosati.tex
	cd src/ && \
	pdflatex -shell-escape rosati.tex && \
	pdflatex -shell-escape rosati.tex
	mv src/rosati.pdf .

brachistochrone: src/brachistochrone.tex
	cd src/ && \
	pdflatex -shell-escape brachistochrone.tex && \
	pdflatex -shell-escape brachistochrone.tex
	mv src/brachistochrone.pdf .

ytnotes: src/ytnotes.tex
	cd src/ && \
	pdflatex -shell-escape ytnotes.tex && \
	pdflatex -shell-escape ytnotes.tex
	mv src/ytnotes.pdf .

sparse: src/sparse.tex
	cd src/ && \
	pdflatex -shell-escape sparse.tex && \
	pdflatex -shell-escape sparse.tex
	mv src/sparse.pdf .

mymath: src/mymath.tex
	cd src/ && \
	pdflatex -shell-escape mymath.tex && \
	pdflatex -shell-escape mymath.tex
	mv src/mymath.pdf .

union-of-vector-spaces: src/union-of-vector-spaces.tex
	cd src/ && \
	pdflatex -shell-escape union-of-vector-spaces.tex && \
	pdflatex -shell-escape union-of-vector-spaces.tex
	mv src/union-of-vector-spaces.pdf .

# Cleaning
clean:
	rm -f  src/*.pdf
	rm -f  src/*.aux
	rm -f  src/*.log
	rm -rf src/_minted-*
