# Virginización de la SAM

Este procedimiento sirve para programar la EEPROM de la SAM con su contenido de fábrica de modo que se puede instalar en cualquier coche usando MB Star.

## Preparación

Retira los the 3 tornillos torx marcados:

```{image} ./images/SAM-outer.png
:alt: SAM-outer
:class: bg-primary mb-1
:width: 800px
:align: center
```

Abre la SAM.

```{image} ./images/SAM-side.jpg
:alt: SAM-side
:class: bg-primary mb-1
:width: 800px
:align: center
```

Vista superior de la placa:

```{image} ./images/SAM-board.png
:alt: SAM-board
:class: bg-primary mb-1
:width: 800px
:align: center
```

Desconecta el pin 16 (CD4060BCM)

```{image} ./images/SAM-CD4060BCM.png
:alt: SAM-board
:class: bg-primary mb-1
:width: 800px
:align: center
```

Cableado para la programación:

```{image} ./images/SAM-wire.png
:alt: SAM-detail
:class: bg-primary mb-1
:width: 800px
:align: center
```

Conector del XProg:

```{image} ./images/XProg-connector.jpg
:alt: XProg-connector
:class: bg-primary mb-1
:width: 800px
:align: center
```

Configuración para la programación:

```{image} ./images/SAM-programming-setup.png
:alt: programming-setup
:class: bg-primary mb-1
:width: 800px
:align: center
```


## Programación

- Abre XProg y selecciona el dispositivo (Device):

  - Type: ZGS 001
  - Subtype: A 164 540 56 62
  - MC9S12DT 256 -> EEPROM 

```{image} ./images/XProg-select-device.png
:alt: xprog-select-device
:class: bg-primary mb-1
:width: 800px
:align: center
```

- Crea un nuevo fichero (File->New) y lee el contenido actual de la EPROM (por si acaso dejarlo como estaba). El VIN del coche está situado a partir de la dirección 0x86E.


```{image} ./images/Xprog-eprom-backup.png
:alt: xprog-eprom-backup
:class: bg-primary mb-1
:width: 800px
:align: center
```

- Carga y escribe el fichero de fábrica en la EPROM.
- Reconecta de nuevo el pin 16.
- Retira los cables de programación.
- La SAM está lista para instalar.


## Instalación de la SAM en el coche

Procedimiento MB Star procedure (Pendiente)

- SAM, manual VIN, SAM menu, setting up

