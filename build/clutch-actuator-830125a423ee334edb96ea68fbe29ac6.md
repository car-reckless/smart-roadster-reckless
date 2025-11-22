# Ajuste del actuador de embrague

El actuador de embrague (en la foto) se debería ajustar regularmente para
conseguir un cambio de marchas más preciso y rápido.

```{image} ./images/clutch-actuator/1.jpg
:class: bg-primary mb-1
:width: 800px
:align: center
```

```{image} ./images/clutch-actuator/2.jpg
:class: bg-primary mb-1
:width: 800px
:align: center
```

Para realizar el ajuste es necesario el sistema MB Star. Los pasos a realizar,
una vez identificado el vehículo, son los siguientes:

1. Limpiar el registro de fallos
2. Desbloquear el inmovilizador, coche apagado, freno de mano y contacto puesto.
3. Ir al menú: Sistemas > MEG > Activación de actuadores > Embrague > “Después
   de … sustitución del componente” 
4. Entrar en “Reprogramar la posición de embragado y de desembragado” y realizar
   el proceso hasta que indique “Resultado de la reprogramación: Activo”.
5. Volver al menú anterior y entrar en “Reprogramar el punto de roce del
   embrague” y realizar todo el proceso.

Si tienes el DAS en inglés los pasos son:

1. Limpiar registro de fallos
2. Desbloquear el inmovilizador, coche apagado, freno de mano y contacto puesto.
3. Ir al menú: Systems > MEG > Actuation of actuators > Clutch > Following
   removal, installation...
4. Entrar en “Teach in clutch engaged and disengaged position” y realizar el
   proceso hasta que indique “Teach-in result: COMPLETED”
5. Volver al menú “Actuations” y entrar en “Teach-in drag point of clutch” y
   realizar el proceso.

Si indica que no es posible, es necesario realizar previamente un ajuste manual.

1. Aflojar los tornillos que aparecen en la figura, lo suficiente para que se
   mueva.
2. Moverlo hacia adelante hasta que haga tope.
3. Moverlo hacia atrás 1 mm
4. Apretar los tornillos
5. Realizar el ajuste con la Star.