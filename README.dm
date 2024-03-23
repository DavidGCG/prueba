# Proyecto robot moviles

## Estructura del Proyecto

#### Control por gestos para:
1. que el robot siga la mano y mapee. Durante el mapeado puedes guardar waypoints con un gesto
2. la persona y el robot vuelven a casa, la persona le puede decir que vaya a un waypoint en concreto
La idea general es poder programar el robot fácilmente con la mano, sin necesidad de programar nada. Una persona sin conocimiento puede crear el mapa y programar al robot con la mano.


#### Gestos FIJOS:
- Iniciar mapeado: el robot entra en estado “mapeado”: sigue ese gesto y va generando el mapa
- Parar mapeado: el robot sale del estado “mapeado” y guarda el mapa generado para que se use
- Iniciar trayectoria: A partir de ese gesto el robot concatena los gestos de los waypoints para hacer la planificación de la trayectoria. 
- Parar trayectoria: Gesto para parar la planificación de la trayectoria. La trayectoria está formada por los waypoints gestualizados entre el gesto de iniciar trayectoria y el gesto de parar trayectoria
- Guardar waypoint: se detecta si se está en el estado mapeado y guarda un waypoint en la posición del robot. 

```
![Texto alternativo](imagenes/grafica.jpeg)
```

### Instalación 🔧


_Hay que instalar las sigientes librerias:_

```
pip install tk
```


## Ejecutando las pruebas ⚙️

_1º Es necesario arancar el entorno de ROS, con los siguientes comandos:_
```
source devel/setup.bash
```
```
roslaunch navigation_stage mi_navigation.launch
```

_Para que todo el programa funcione es necesario ejecutar los siguientes archivos_



```
python mapa_rviz.py
```
```
python VentanaGraficaTk.py
```

## Verciones de la ventana grafica:📟
### Vercion 1:
```
VentanaGraficaTk.py
```
```
<p align="center">
  <img src="imagenes/V_1.png" width="600" height="400" alt="Descripción de la imagen">
</p>
```

### Vercion 2:
```
interface_2.py
```
```
<p align="center">
  <img src="imagenes/V_2.png" width="600" height="400" alt="Descripción de la imagen">
</p>
```

## Poner el marcha el robot real
1º Devbemos sabre cual es la IP de nuestro HOST, con el siguiente comando 

```
ifconfig | grep -oE 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -oE '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'
```

2º Se debe acceder al path, y cambiar ingresalr la IP del robot y la del HOST
```
nano .bashrc
```

3º Se accede por SSH al Turtlebot

```
 ssh tb2@192.168.1.9
```
(Se tiene que cambiar la IP, por la que coresponda a nuestro robot)
La contraseña es: ros

4º En una nueva terminal por la que nos conectamos por SSH, como se ha explicado anteriormente, se ejecuta el aranque minimo del robot
```
roslaunch turtlebot_bringup minimal.launch
```
Si se deseara arancar el laser, en otra terminal se ejecutaria el siguiente comando:
```
roslaunch turtlebot_bringup hokuyo_ust10lx.launch
```


## Autores ✒️

_Menciona a todos aquellos que ayudaron a levantar el proyecto desde sus inicios_

* **Natalia** - *Trabajo Inicial* - 
* **Celia** - *Documentación*
* **Borja** - *Documentación*
* **David** - *Documentación* 

