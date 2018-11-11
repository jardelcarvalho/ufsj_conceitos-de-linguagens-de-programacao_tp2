FLOAT_ITERACOES = 1000000000
STRING_ITERACOES = 1000000000

all:
	javac orientado_objetos/ponto_flutuante/main.java
	javac orientado_objetos/string/main.java
	gcc imperativo/float.c -o imperativo/float.o
	gcc imperativo/string.c -o imperativo/string.o
	ghc funcional/float/main.hs -ifuncional/float -o funcional/float/main
	ghc funcional/string/main.hs -ifuncional/string -o funcional/string/main

run:
	@echo Linguagem Java
	time java orientado_objetos.ponto_flutuante.main 0 ${FLOAT_ITERACOES}
	time java orientado_objetos.ponto_flutuante.main 1 ${FLOAT_ITERACOES}
	time java orientado_objetos.ponto_flutuante.main 2 ${FLOAT_ITERACOES}
	time java orientado_objetos.ponto_flutuante.main 3 ${FLOAT_ITERACOES}
	time java orientado_objetos.ponto_flutuante.main 4 ${FLOAT_ITERACOES}
	time java orientado_objetos.string.main 0 ${STRING_ITERACOES}
	time java orientado_objetos.string.main 1 ${STRING_ITERACOES}
	time java orientado_objetos.string.main 2 ${STRING_ITERACOES}
	@echo Linguagem C
	time ./imperativo/float.o 0 ${FLOAT_ITERACOES}
	time ./imperativo/float.o 1 ${FLOAT_ITERACOES}
	time ./imperativo/float.o 2 ${FLOAT_ITERACOES}
	time ./imperativo/float.o 3 ${FLOAT_ITERACOES}
	time ./imperativo/float.o 4 ${FLOAT_ITERACOES}
	time ./imperativo/string.o 0 ${STRING_ITERACOES}
	time ./imperativo/string.o 1 ${STRING_ITERACOES}
	time ./imperativo/string.o 2 ${STRING_ITERACOES}

runhsf:
	time ./funcional/float/main

runhss:
	time ./funcional/string/main
	
clean:
