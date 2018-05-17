# Aspectos técnicos

## Cliente 

### Despliegue

Se construye la imagen a partir del dockerfile 

~~~
sudo docker build . -t iot4dummies/cliente
~~~

Se ejecuta el script para agregar un cliente de la siguiente manera 

~~~
sudo chmod +x add_user.sh 
sudo ./add_user.sh <puerto> <nombreCliente> <contraseña>
~~~

Finalmente se prueba si se desplegó correctamente abriendo http://localhost 

