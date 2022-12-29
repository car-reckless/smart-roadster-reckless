# Llaves e inmovilizador

Existen dos sistemas de apertura en el 452. En toda Europa se fabricó con un
sistema basado en radiofrecuencia (RF) mientras que en España se vendió con un
sistema por infrarrojos (IR). Es fácil diferenciarlos pues la llave IR tiene dos
LEDs, uno a cada lado del espadín.

```{image} ./images/keys/ir-key.png
:class: bg-primary mb-1
:width: 800px
:align: center
```

En ambos casos, las llaves emiten una señal que incluye el identificador de la
propia llave y la del botón presionado. De hecho, el cable que lleva la señal
hasta la SAM va desde el receptor IR al receptor RF y de allí a la SAM.


## IR receiver

Está justo por encima de la luz de cortesía por el interior del marco del
parabrisas, sobresale una pequeña cúpula semiesférica color caramelo.
    
- La llave IR necesita 2 pilas BR1225.

```{image} ./images/keys/ir-receiver-1.png
:class: bg-primary mb-1
:width: 800px
:align: center
```

```{image} ./images/keys/ir-receiver-2.png
:class: bg-primary mb-1
:width: 800px
:align: center
```

```{image} ./images/keys/ir-receiver-3.png
:class: bg-primary mb-1
:width: 800px
:align: center
```

### Averías

Debido a la situación del receptor, el calor afecta a las resistencias y con el
tiempo cambian su valor. Esto provoca que el receptor deje que recibir la señal
de la llave. Para resolverlo se deben comprobar (y cambiar si es necesario) las
siguientes resistencias. Se indica el número impreso en la resistencia y el
valor en ohmios que debería tener.

1. "222" -> 2K2
2. "151" -> 150
3. "223" -> 22K
4. "223" -> 22K
5. "2204" (225) -> 2M2
6. "3013" (304) -> 300K
7. "1011" (102) -> 1K


```{image} ./images/keys/ir-receiver-pcb.png
:class: bg-primary mb-1
:width: 800px
:align: center
```

## Receptor RF

Su referencia es 000 3503 V003 y se encuentra sobre el túnel entre los dos
asientos, oculto entre la palanca y el freno de mano, debajo de la moqueta.

La llave RF necesita una pila CR2016 (Ref: Q0007809V002) o CR2020 si cabe en el
portapilas.

```{image} ./images/keys/rf-receiver-1.png
:class: bg-primary mb-1
:width: 800px
:align: center
```

```{image} ./images/keys/rf-receiver-2.jpg
:class: bg-primary mb-1
:width: 800px
:align: center
```

En la siguiente foto está instalado sobre la moqueta, pero también hay espacio
debajo de ella.

```{image} ./images/keys/rf-receiver-location.jpg
:class: bg-primary mb-1
:width: 800px
:align: center
```

## IR + RF


Es perfectamente posible disponer de los dos sistemas simultáneamente. En el
caso de coches con IR de serie, simplemente es necesario instalar el receptor en
su lugar, ya que el conector y el cableado vienen de serie. Solo hay que
desmontar el plástico que cubre la palanca de cambios y el freno de mano, y
buscar el conector en el hueco entre ambos. 

Puede ser necesario cortar un poco la moqueta para poder extraerlo, teniendo
cuidado de no dañar ninguno de los cables que pasan por esa zona. Se debe evitar
que queden cables por encima del receptor ya que podrían afectar a la recepción
de la señal. También es conveniente que el receptor quede posicionado con la
pata de masa hacia abajo (como en las fotos) para que la antena quede hacia
arriba.

Se ha comprobado que un receptor IR deficiente puede dificultar o impedir la
programación exitosa de las llaves RF. En ese caso se puede proceder a
cambiar/reparar el receptor IR o bien instalar temporalmente uno en buenas
condiciones (durante el proceso de programación). Una vez programadas, se puede
poner de nuevo el receptor IR original. Al parecer, el proceso de programación
requiere un funcionamiento más preciso del receptor IR, que en funcionamiento
normal.

## Programación de llaves

La programación de ambos tipos de llaves se realiza con el sistema MB Star. El
452 admite un máximo de 4 llaves (IR, RF o combinación de ambas), que además se
pueden utilizar simultáneamente en otros coches. El proceso de programación
consiste en almacenar en la SAM los códigos de las llaves deseadas, por tanto el
proceso modifica la configuración del coche, no de las llaves.

## Enlaces relacionados

- https://forosmart.com/topic/30834-brico-cambiar-ir-a-rf/?tab=comments#comment-361938