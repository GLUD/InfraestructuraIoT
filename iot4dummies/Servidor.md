#Aspectos Técnicos

##Servidor

El docker del servidor contiene un broker MQTT y un servidor NGINX para mapear los puertos de cada dockerde cliente. Este servidor funciona como administrador y punto de acceso de los dockers cliente

###Prerequisitos

+Tener instalado docker

###Despliegue

Se construye la imagen a partir del dockerfile 

~~~
sudo docker build . -t iot4dummies/server
~~~

Se crea un container a partir de la imagen

~~~
sudo docker run -p 80:80 -p 1884:1884 -it --name server iot4dummies/server
~~~

Finalmente se prueba si se desplegó correctamente abriendo http://localhost 

