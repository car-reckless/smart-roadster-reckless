# SAM virginizing

This procedure set the SAM EEPROM to factory defaults so may be setup in any car using MB Star.

## Preparation

Remove the 3 torx screws

```{image} ./images/SAM-outer.png
:alt: SAM-up
:class: bg-primary mb-1
:width: 800px
:align: center
```

Open box:

```{image} ./images/SAM-side.jpg
:alt: SAM-side
:class: bg-primary mb-1
:width: 800px
:align: center
```

Upside board view:

```{image} ./images/SAM-board.png
:alt: SAM-board
:class: bg-primary mb-1
:width: 800px
:align: center
```

Disconnect pin 16 (CD4060BCM)

```{image} ./images/SAM-CD4060BCM.png
:alt: SAM-board
:class: bg-primary mb-1
:width: 800px
:align: center
```

Wiring:

```{image} ./images/SAM-detail.png
:alt: SAM-detail
:class: bg-primary mb-1
:width: 800px
:align: center
```

XProg connector:

```{image} ./images/XProg-connector.jpg
:alt: XProg-connector
:class: bg-primary mb-1
:width: 800px
:align: center
```

Programming setup:

```{image} ./images/SAM-programming-setup.png
:alt: programming-setup
:class: bg-primary mb-1
:width: 800px
:align: center
```


## Programming

- Open XProg an select Device:

  - Type: ZGS 001
  - Subtype: A 164 540 56 62
  - MC9S12DT 256 -> EEPROM 

```{image} ./images/XProg-select-device.png
:alt: xprog-select-device
:class: bg-primary mb-1
:width: 800px
:align: center
```

- Create new file (File->New) and read current EPROM content (for backup).


```{image} ./images/Xprog-eprom-backup.png
:alt: xprog-eprom-backup
:class: bg-primary mb-1
:width: 800px
:align: center
```

- Load and write factory default eprom dump file.

- Reconnect pin 16 again.

- Remove wires.

- Your SAM is ready to install in the car.

## Setting up SAM in car 

MB Star procedure (TODO)