# Asientos calefactables

Relés (uno por asiento)

```{image} ./images/heated-seats/rele.jpg
:class: bg-primary mb-1
:width: 800px
:align: center
```

```{image} ./images/heated-seats/2.jpg
:class: bg-primary mb-1
:width: 800px
:align: center
```

```{image} ./images/heated-seats/3.png
:class: bg-primary mb-1
:width: 800px
:align: center
```

- Los blancos llevan el positivo al asiento
- Del asiento sale un cable marrón que va a masa
- El rojo a positivo ( SAM )
- El negro (pin 9 del relé) va al conector 11-2 pin 2 de la SAM
- El azul (pin 1 del relé) va a parar al conector 11-3 pin 3 (azul)
- El verde (pin 6 del rele) va al conector 11-5 pin 7 ( marron/blanco )
- De la botonera del warning salen dos cables para cada asiento (pines 4 y 8 de cada relé)

Es confuso seguir los cables en el mazo del coche porque hay varios empalmes ocultos, pero aparecen en WIS.

No es dificil siguiendo el esquema y funciona con los botones originales del
coche con tres posiciones: Apagado, Media y Máximo.


```{image} ./images/heated-seats/4.png
:class: bg-primary mb-1
:width: 800px
:align: center
```