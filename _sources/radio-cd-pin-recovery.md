# Recuperación del pin del Radio CD

(by Josep)

El único objetivo de este tutorial es permitir a propietarios legítimos recuperar su código de seguridad, en el caso de que hayan perdido la tarjeta proporcionada por el fabricante en el momento de la compra.

El Smart Roadster viene de serie con el equipo Grundig radio CD MRR.

```{image} ./images/radio-cd/radio-cd-2.png
:class: bg-primary mb-1
:width: 100%
:align: center
```

La radio almacena el código de seguridad (PIN) en una memoria EEPROM 24C08 con bus I2C. Para conseguir el PIN lo primero es leer el contenido de dicha memoria y después decodificarlo.

## Lector RS232

Esta memoria se puede leer con un sencillo circuito que se conecta directamente a sus patas por un lado y al puerto serie de un PC por el otro.

```{image} ./images/radio-cd/eeprom-programmer.png
:class: bg-primary mb-1
:width: 80%
:align: center
```

El pinout del chip de memoria es el siguiente:

```{image} ./images/radio-cd/pinout.png
:class: bg-primary mb-1
:width: 20%
:align: center
```

El cable montado queda así:

```{image} ./images/radio-cd/reader-1.png
:class: bg-primary mb-1
:width: 100%
:align: center
```

Otro montaje utilizando placa de prototipos:


```{image} ./images/radio-cd/reader-2.png
:class: bg-primary mb-1
:width: 100%
:align: center
```

Los componentes necesarios son:

- Conector DB9
- 2 resistencias 4K7
- 2 diodos zener de 5V1, 400 mW
- Un trozo de cable. El típico de audio de 2 cables más malla puede servir.

El cable de la foto está montado directamente soldando los componentes y aislándolos con termoretractil.

Por tanto, tenemos el conector DB9 en un extremo y tres cables que corresponden con SCL, SDA y GND en el otro extremo. Los cables que corresponden a SCL y SDA deberían ser muy finos pues se deben soldar directamente a las patitas de la memoria (que es de tipo SMD). El tercero (la malla) se suelda a masa.


##  Desmontando la radio

Hay que sacar la tapa superior, que no lleva tornillos. Sale levantando de las esquinas:

```{image} ./images/radio-cd/unmount-1.png
:class: bg-primary mb-1
:width: 100%
:align: center
```

```{image} ./images/radio-cd/unmount-2.png
:class: bg-primary mb-1
:width: 100%
:align: center
```

```{image} ./images/radio-cd/unmount-3.png
:class: bg-primary mb-1
:width: 100%
:align: center
```

Cuidado con las pestañas del frontal, hay que levantar completamente la tapa para sacarla sin romperlas:

```{image} ./images/radio-cd/unmount-4.png
:class: bg-primary mb-1
:width: 100%
:align: center
```

```{image} ./images/radio-cd/unmount-5.png
:class: bg-primary mb-1
:width: 100%
:align: center
```

```{image} ./images/radio-cd/unmount-6.png
:class: bg-primary mb-1
:width: 100%
:align: center
```

Está montados con tornillos TORX T9:

```{image} ./images/radio-cd/unmount-7.png
:class: bg-primary mb-1
:width: 100%
:align: center
```

```{image} ./images/radio-cd/unmount-8.png
:class: bg-primary mb-1
:width: 100%
:align: center
```

Levantando por el lado derecho visto desde atrás, veremos en el otro lado el cable plano que lo conecta:


```{image} ./images/radio-cd/unmount-9.png
:class: bg-primary mb-1
:width: 100%
:align: center
```

Empujando las pestañas de cada lado se abre el bloqueo del conector y se puede sacar el cable:


```{image} ./images/radio-cd/unmount-10.png
:class: bg-primary mb-1
:width: 100%
:align: center
```
```{image} ./images/radio-cd/unmount-11.png
:class: bg-primary mb-1
:width: 100%
:align: center
```
```{image} ./images/radio-cd/unmount-12.png
:class: bg-primary mb-1
:width: 100%
:align: center
```
```{image} ./images/radio-cd/unmount-13.png
:class: bg-primary mb-1
:width: 100%
:align: center
```
```{image} ./images/radio-cd/unmount-14.png
:class: bg-primary mb-1
:width: 100%
:align: center
```
```{image} ./images/radio-cd/unmount-15.png
:class: bg-primary mb-1
:width: 100%
:align: center
```

O lo mismo, pero con pinzas, para no tener que soldar:

```{image} ./images/radio-cd/unmount-16.png
:class: bg-primary mb-1
:width: 100%
:align: center
```

```{image} ./images/radio-cd/unmount-17.png
:class: bg-primary mb-1
:width: 100%
:align: center
```

## Lectura de la memoria

- Conecta el cable al puerto serie del PC.
- Arranca el PC
- Ejecuta PonyProg V117h y selecciona el tipo de memoria 24C08.

La siguiente operación debe ser muy rápida.

- Alimenta la radio, y en cuanto se ilumine la pantalla LCD
- Pulsa el botón de lectura en el PonyProg, y en cuanto la lea.
- Inmediatamente quita la alimentación de la radio.


```{image} ./images/radio-cd/reading.png
:class: bg-primary mb-1
:width: 100%
:align: center
```

Arrancamos el Grundig WKC Series Code Calculator 4.00, que se puede encontrar en:
http://data.autorepairmanuals.ws/18b7ae227cb984888ecced1a26270a85
Cuidado con los virus!


```{image} ./images/radio-cd/code-calculator-1.png
:class: bg-primary mb-1
:width: 100%
:align: center
```

Elige el modelo "Challenge 600 CD" y escribe los datos en hexadecimal que aparecen a partir de la dirección 000010. En el caso de la lectura anterior son: **b0 8e 84 9c bf 18**. Después pulsa "Repair My Dump" y el programa mostrará el PIN una vez descifrado.

```{image} ./images/radio-cd/code-calculator-2.png
:class: bg-primary mb-1
:width: 100%
:align: center
```

Por si quieres comprobar que funciona correctamente, otra secuencia válida es:

- **2b 5b 1f 49 24 32** que corresponde al PIN **6540**.
