# Aspectos Técnicos

## Servidor

El docker del servidor contiene un broker MQTT y un servidor NGINX para mapear los puertos de cada dockerde cliente. Este servidor funciona como administrador y punto de acceso de los dockers cliente

### Prerequisitos

+ Tener instalado docker
+ Tener instalado nodejs y npm

### Despliegue

Se instala node-red para utilizar sus utilidades

~~~
sudo npm install -g node-red
~~~

Se construye la imagen a partir del dockerfile 

~~~
sudo docker build . -t iot4dummies/server
~~~

Se establece una red común entre los contenedores

~~~
sudo docker network create testnet
~~~

Se crea un container a partir de la imagen

~~~
sudo docker run --net testnet -p 80:80 -p 1884:1884 -it --name server iot4dummies/server
~~~

Finalmente se prueba si se desplegó correctamente abriendo http://localhost 

