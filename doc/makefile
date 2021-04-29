COMPILER := latexmk
FLAGSOUTPUT := -pdf

all:
	$(COMPILER) --shell-escape main $(FLAGSOUTPUT)
	@mv main.pdf documento.pdf
	$(MAKE) mrproper


compilerA:
	pdflatex --shell-escape  main.tex
	@mv main.pdf documento.pdf
	$(MAKE) mrproper


mrproper:
	@rm -f ./main.toc ./main.aux ./main.out main.synctex.gz ./main.fdb_latexmk ./main.fls main.log  main.lof  2> /dev/null 
	@rm -rf ./_minted-main 2> /dev/null 

clean: mrproper
	@rm -f main.pdf documento.pdf 

