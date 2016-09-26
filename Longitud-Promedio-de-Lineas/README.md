# Longitud Promedio de Lineas

Analizador lexico que recibe de la entrada estandar un texto y devuelve el valor promedio de las lineas utilizando [Flex](http://flex.sourceforge.net/).  


* Diagrama del funcionamiento del programa

![iagrama-LongitudPromedioDeLineas.png](https://github.com/nanderson87/SSL/blob/master/Longitud-Promedio-de-Lineas/Diagramas/Diagrama-LongitudPromedioDeLineas.png)


* Reglas Léxicas - reglasLexicas.l

```
 %option noyywrap
 %{
 int nl, nc;	
 %}
 %%
 \n  ++nl;
 .	 ++nc;
 %%
 int main(void){
	 int i;
	 yylex();
	 printf("%.1f\n", nl?nc/(float)nl:0);
	 return 0;
 }
```
